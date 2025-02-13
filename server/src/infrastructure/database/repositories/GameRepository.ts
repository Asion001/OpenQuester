import { type Redis } from "ioredis";

import { ApiContext } from "application/context/ApiContext";
import {
  GAME_ID_CHARACTERS,
  GAME_ID_CHARACTERS_LENGTH,
  GAME_NAMESPACE,
} from "domain/constants/game";
import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import { ClientResponse } from "domain/enums/ClientResponse";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { GameDTO } from "domain/types/dto/game/GameDTO";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { GameRedisHashDTO } from "domain/types/dto/game/GameRedisHashDTO";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import {
  PaginationOpts,
  PaginationOrder,
} from "domain/types/pagination/PaginationOpts";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";
import { RedisConfig } from "infrastructure/config/RedisConfig";
import { type Database } from "infrastructure/database/Database";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { type User } from "infrastructure/database/models/User";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class GameRepository {
  private static _instance: GameRepository;
  private readonly _redisClient: Redis;
  private _packageRepository!: PackageRepository;
  private _userRepository!: UserRepository;
  private readonly _gameIdxManager: GameIndexManager;

  private constructor() {
    this._redisClient = RedisConfig.getClient();
    this._gameIdxManager = new GameIndexManager(this._redisClient);
  }

  public static getInstance(): GameRepository {
    if (!this._instance) {
      this._instance = new GameRepository();
    }
    return this._instance;
  }

  public async getGameKey(gameId: string) {
    return `${GAME_NAMESPACE}:${gameId}`;
  }

  public async getGameRaw(gameId: string) {
    const key = await this.getGameKey(gameId);
    const game = this._redisClient.hgetall(key);

    if (!game) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    try {
      if (this._isValidGameHash(game)) {
        return this._deserializeGame(game);
      }
    } catch {
      return;
    }
  }

  public async getGame(ctx: ApiContext, gameId: string) {
    const gameData = await this.getGameRaw(gameId);

    if (!gameData) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    return this._mapRedisRecordToGameItem(ctx, gameData);
  }

  public async getAllGamesRaw(
    paginationOpts: PaginationOpts<GameDTO>
  ): Promise<PaginatedResult<GameDTO[]>> {
    const keys = await this._redisClient.keys(`${GAME_NAMESPACE}:*`);

    // Fetch all game data in one redis request
    const pipeline = this._redisClient.pipeline();
    keys.forEach((key) => pipeline.get(key));
    const pipelineResult = await pipeline.exec();

    if (!pipelineResult?.length) {
      return { data: [], pageInfo: { total: 0 } };
    }

    // Parse and filter valid games
    const games: (GameDTO | undefined)[] = await Promise.all(
      pipelineResult.map(async ([err, raw]) => {
        try {
          return err ? undefined : JSON.parse(raw as string);
        } catch {
          // Ignore invalid games
        }
      })
    );
    const validGames = games.filter((g): g is GameDTO => !ValueUtils.isBad(g));

    const totalCount = validGames.length;

    // Sorting
    const { sortBy = "createdAt", order = PaginationOrder.ASC } =
      paginationOpts;
    validGames.sort((a, b) => this._compareGames(a, b, sortBy, order));

    // Pagination
    const { offset, limit } = paginationOpts;
    const paginatedGames = validGames.slice(offset, offset + limit);

    return {
      data: paginatedGames,
      pageInfo: { total: totalCount },
    };
  }

  public async getAllGames(
    ctx: ApiContext,
    paginationOpts: PaginationOpts<GameDTO>
  ): Promise<PaginatedResult<GameListItemDTO[]>> {
    const { ids, total } = await this._gameIdxManager.findGamesByIndex(
      {}, // No filters for now
      paginationOpts
    );

    const packageIds = new Set<number>();
    const userIds = new Set<number>();
    const games = await this._fetchGameDetails(ids);

    if (!games) {
      return {
        data: [],
        pageInfo: {
          total: 0,
        },
      };
    }

    games.forEach((game) => {
      packageIds.add(game.package);
      userIds.add(game.createdBy);
    });

    // TODO: Check if works
    const [users, packages] = await Promise.all([
      this._getUserRepository(ctx.db).findByIds(Array.from(userIds), {
        select: ["id", "username"],
        relations: [],
      }) as Promise<ShortUserInfo[]>,
      this._getPackageRepository(ctx.db).findByIds(Array.from(packageIds), {
        select: PACKAGE_SELECT_FIELDS,
        relations: ["author"],
        relationSelects: { author: ["id", "username"] },
      }),
    ]);

    const userMap = new Map(users.map((u) => [u.id, u]));
    const packageMap = new Map(packages.map((p) => [p.id, p]));

    const gamesItems = games
      .map((game) => {
        const createdBy = userMap.get(game.createdBy);
        const packData = packageMap.get(game.package);

        if (!packData || !packData.author) {
          return null;
        }

        const packMeta = packData.content.metadata;

        return {
          ...game,
          createdBy,
          package: {
            id: packData.id,
            createdAt: packData.created_at,
            rounds: packData.content.rounds.length,
            tags: packMeta.tags,
            title: packMeta.title,
            ageRestriction: packMeta.ageRestriction ?? AgeRestriction.NONE,
            author: {
              id: packData.author.id,
              username: packData.author.username,
            },
          },
        };
      })
      .filter((g): g is GameListItemDTO => g !== null);

    return {
      data: gamesItems,
      pageInfo: {
        total,
      },
    };
  }

  public async createGame(
    ctx: ApiContext,
    gameData: GameCreateDTO,
    createdBy: User
  ) {
    const packageRepo = this._getPackageRepository(ctx.db);

    const packageData = await packageRepo.get(gameData.packageId, {
      select: PACKAGE_SELECT_FIELDS,
      relations: ["author"],
      relationSelects: { author: ["id", "username"] },
    });

    if (!packageData) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    if (!packageData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const gameId = this._generateGameId();
    const key = await this.getGameKey(gameId);

    if (await this._redisClient.get(key)) {
      throw new ClientError(ClientResponse.BAD_GAME_CREATION);
    }

    // Redis entity
    const gameDataRaw: GameDTO = {
      id: gameId,
      createdBy: createdBy.id,
      title: gameData.title,
      createdAt: new Date(),
      isPrivate: gameData.isPrivate,
      ageRestriction: gameData.ageRestriction,
      currentRound: 0,
      players: 0,
      maxPlayers: gameData.maxPlayers,
      startedAt: null,
      package: gameData.packageId,
    };

    const pipeline = this._redisClient.pipeline();

    pipeline.hset(key, this._serializeGame(gameDataRaw));

    this._gameIdxManager.addGameToIndexesPipeline(
      pipeline,
      gameDataRaw.id,
      gameDataRaw
    );

    await pipeline.exec();

    // List item returned to client
    const gameDataOutput: GameListItemDTO = {
      ...gameDataRaw,
      createdBy: { id: createdBy.id, username: createdBy.username },
      package: {
        id: gameData.packageId,
        title: packageData.title,
        // TODO: Get age restriction after new pack model implemented
        ageRestriction: AgeRestriction.NONE,
        createdAt: packageData.created_at,
        rounds: packageData.content.rounds.length,
        tags: packageData.content.metadata.tags,
        author: {
          id: packageData.author.id,
          username: packageData.author.username,
        },
      },
    };

    return gameDataOutput;
  }

  public async deleteGame(gameId: string) {
    const key = await this.getGameKey(gameId);
    const gameData = await this.getGameRaw(gameId);

    if (!gameData) {
      throw new ClientError(ClientResponse.GAME_NOT_FOUND);
    }

    await this._gameIdxManager.removeGameFromIndexes(gameId, gameData);
    await this._redisClient.del(key);
  }

  private async _mapRedisRecordToGameItem(
    ctx: ApiContext,
    record: GameDTO
  ): Promise<GameListItemDTO | undefined> {
    const userRepo = this._getUserRepository(ctx.db);
    const packageRepo = this._getPackageRepository(ctx.db);

    const createdBy = await userRepo.get(record.createdBy, {
      select: ["id", "username"],
      relations: [],
    });

    const packData = await packageRepo.get(record.package, {
      select: PACKAGE_SELECT_FIELDS,
      relations: ["author"],
      relationSelects: { author: ["id", "username"] },
    });

    if (!packData) {
      return;
    }

    if (!packData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    if (!createdBy) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    const packMeta = packData.content.metadata;

    return {
      ...record,
      createdBy,
      package: {
        id: packData.id,
        createdAt: packData.created_at,
        rounds: packData.content.rounds.length,
        tags: packMeta.tags,
        title: packMeta.title,
        ageRestriction: packMeta.ageRestriction ?? AgeRestriction.NONE,
        author: {
          id: packData.author.id,
          username: packData.author.username,
        },
      },
    };
  }

  private _getPackageRepository(db: Database) {
    if (!this._packageRepository) {
      this._packageRepository = PackageRepository.getRepository(db);
    }
    return this._packageRepository;
  }

  private _getUserRepository(db: Database) {
    if (!this._userRepository) {
      this._userRepository = UserRepository.getRepository(db);
    }
    return this._userRepository;
  }

  private _generateGameId() {
    let result = "";
    for (let i = 0; i < GAME_ID_CHARACTERS_LENGTH; i++) {
      result +=
        GAME_ID_CHARACTERS[
          Math.floor(Math.random() * GAME_ID_CHARACTERS.length)
        ];
    }
    return result;
  }

  private _compareGames(
    a: GameDTO,
    b: GameDTO,
    sortBy: keyof GameDTO,
    order: PaginationOrder
  ): number {
    const fieldA = a[sortBy];
    const fieldB = b[sortBy];

    if (fieldA === fieldB) return 0;
    if (fieldA === null) return order === "asc" ? -1 : 1;
    if (fieldB === null) return order === "asc" ? 1 : -1;

    if (order === "asc") {
      return fieldA > fieldB ? 1 : -1;
    }

    return fieldA < fieldB ? 1 : -1;
  }

  private _isValidGameHash(data: unknown): data is GameRedisHashDTO {
    if (typeof data !== "object" || data === null) return false;
    const hash = data as GameRedisHashDTO;

    const requiredKeys = [
      "id",
      "createdBy",
      "title",
      "createdAt",
      "isPrivate",
      "ageRestriction",
      "currentRound",
      "players",
      "maxPlayers",
      "startedAt",
      "package",
    ];

    return requiredKeys.every(
      (key) => typeof hash[key as keyof GameRedisHashDTO] === "string"
    );
  }

  private async _fetchGameDetails(gameIds: string[]) {
    const pipeline = this._redisClient.pipeline();
    gameIds.forEach((id) => pipeline.hgetall(`${GAME_NAMESPACE}:${id}`));

    const results = await pipeline.exec();
    if (!results) {
      return;
    }

    return results.map(([, data]) => this._deserializeGame(data as any));
  }

  private _serializeGame(game: GameDTO): GameRedisHashDTO {
    return {
      id: game.id,
      createdBy: game.createdBy.toString(),
      title: game.title,
      createdAt: game.createdAt.getTime().toString(),
      isPrivate: game.isPrivate ? "1" : "0",
      ageRestriction: game.ageRestriction,
      currentRound: game.currentRound.toString(),
      players: game.players.toString(),
      maxPlayers: game.maxPlayers.toString(),
      package: game.package.toString(),
      startedAt: game.startedAt?.getTime().toString() ?? "",
    };
  }

  private _deserializeGame(data: GameRedisHashDTO): GameDTO {
    return {
      id: data.id,
      createdBy: parseInt(data.createdBy),
      title: data.title,
      createdAt: new Date(parseInt(data.createdAt)),
      isPrivate: data.isPrivate === "1",
      currentRound: parseInt(data.currentRound),
      ageRestriction: data.ageRestriction as AgeRestriction,
      players: parseInt(data.players),
      maxPlayers: parseInt(data.maxPlayers),
      package: parseInt(data.package),
      startedAt: data.startedAt ? new Date(parseInt(data.startedAt)) : null,
    };
  }
}
