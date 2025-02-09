import { type Redis } from "ioredis";

import { RedisConfig } from "config/RedisConfig";
import {
  GAME_ID_CHARACTERS,
  GAME_ID_CHARACTERS_LENGTH,
  GAME_NAMESPACE,
} from "constants/game";
import { IGame } from "types/game/IGame";
import { ApiContext } from "services/context/ApiContext";
import { IGameListItem } from "types/game/IGameListItem";
import { PackageRepository } from "./PackageRepository";
import { UserRepository } from "./UserRepository";
import { Database } from "database/Database";
import { EAgeRestriction } from "enums/game/EAgeRestriction";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { ValueUtils } from "utils/ValueUtils";
import { IGameCreateData } from "types/game/IGameCreate";
import { User } from "database/models/User";
import {
  IPaginationOpts,
  EPaginationOrder,
} from "types/pagination/IPaginationOpts";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { HttpStatus } from "enums/HttpStatus";
import { IShortUserInfo } from "types/user/IShortUserInfo";
import { GameIndexManager } from "database/managers/game/GameIndexManager";
import { IGameRedisHash } from "types/game/IGameRedisHash";

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

    return this._convertRedisRecord(ctx, gameData);
  }

  public async getAllGamesRaw(
    paginationOpts: IPaginationOpts<IGame>
  ): Promise<IPaginatedResult<IGame[]>> {
    const keys = await this._redisClient.keys(`${GAME_NAMESPACE}:*`);

    // Fetch all game data in one redis request
    const pipeline = this._redisClient.pipeline();
    keys.forEach((key) => pipeline.get(key));
    const pipelineResult = await pipeline.exec();

    if (!pipelineResult?.length) {
      return { data: [], pageInfo: { total: 0 } };
    }

    // Parse and filter valid games
    const games: (IGame | undefined)[] = await Promise.all(
      pipelineResult.map(async ([err, raw]) => {
        try {
          return err ? undefined : JSON.parse(raw as string);
        } catch {
          // Ignore invalid games
        }
      })
    );
    const validGames = games.filter((g): g is IGame => !ValueUtils.isBad(g));

    const totalCount = validGames.length;

    // Sorting
    const { sortBy = "createdAt", order = EPaginationOrder.ASC } =
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
    paginationOpts: IPaginationOpts<IGame>
  ): Promise<IPaginatedResult<IGameListItem[]>> {
    const { ids, total } = await this._gameIdxManager.findGamesByIndex(
      {}, // No filters for now
      {
        offset: paginationOpts.offset,
        limit: paginationOpts.limit,
        order: paginationOpts.order || EPaginationOrder.DESC,
      }
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

    const [users, packages] = await Promise.all([
      this._getUserRepository(ctx.db).findByIds(Array.from(userIds), {
        select: ["id", "username"],
        relations: [],
      }) as Promise<IShortUserInfo[]>,
      this._getPackageRepository(ctx.db).findByIds(Array.from(packageIds)),
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
            ageRestriction: packMeta.ageRestriction ?? EAgeRestriction.NONE,
            author: {
              id: packData.author.id,
              username: packData.author.username,
            },
          },
        };
      })
      .filter((g): g is IGameListItem => g !== null);

    return {
      data: gamesItems,
      pageInfo: {
        total,
      },
    };
  }

  public async createGame(
    ctx: ApiContext,
    gameData: IGameCreateData,
    createdBy: User
  ) {
    const packageRepo = this._getPackageRepository(ctx.db);

    const packageData = await packageRepo.get(gameData.packageId);

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
    const gameDataRaw: IGame = {
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
    const gameDataOutput: IGameListItem = {
      ...gameDataRaw,
      createdBy: { id: createdBy.id, username: createdBy.username },
      package: {
        id: gameData.packageId,
        title: packageData.title,
        // TODO: Get age restriction after new pack model implemented
        ageRestriction: EAgeRestriction.NONE,
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

  private async _convertRedisRecord(
    ctx: ApiContext,
    record: IGame
  ): Promise<IGameListItem | undefined> {
    const userRepo = this._getUserRepository(ctx.db);
    const packageRepo = this._getPackageRepository(ctx.db);

    const createdBy = await userRepo.get(record.createdBy, {
      select: ["id", "username"],
      relations: [],
    });

    const packData = await packageRepo.get(record.package);

    if (!packData) {
      return;
    }

    if (!packData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
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
        ageRestriction: packMeta.ageRestriction ?? EAgeRestriction.NONE,
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
    a: IGame,
    b: IGame,
    sortBy: keyof IGame,
    order: EPaginationOrder
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

  private _isValidGameHash(data: unknown): data is IGameRedisHash {
    const hash = data as IGameRedisHash;
    if (typeof hash !== "object" || hash === null) return false;

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
      (key) => typeof hash[key as keyof IGameRedisHash] === "string"
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

  private _serializeGame(game: IGame): IGameRedisHash {
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

  private _deserializeGame(data: IGameRedisHash): IGame {
    return {
      id: data.id,
      createdBy: parseInt(data.createdBy),
      title: data.title,
      createdAt: new Date(parseInt(data.createdAt)),
      isPrivate: data.isPrivate === "1",
      currentRound: parseInt(data.currentRound),
      ageRestriction: data.ageRestriction as EAgeRestriction,
      players: parseInt(data.players),
      maxPlayers: parseInt(data.maxPlayers),
      package: parseInt(data.package),
      startedAt: data.startedAt ? new Date(parseInt(data.startedAt)) : null,
    };
  }
}
