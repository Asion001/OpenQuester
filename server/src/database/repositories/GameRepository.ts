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

export class GameRepository {
  private static _instance: GameRepository;
  private _redisClient: Redis;
  private _packageRepository!: PackageRepository;
  private _userRepository!: UserRepository;

  private constructor() {
    this._redisClient = RedisConfig.getClient();
  }

  public static getInstance(): GameRepository {
    if (!this._instance) {
      this._instance = new GameRepository();
    }
    return this._instance;
  }

  public async getGame(ctx: ApiContext, gameId: string) {
    const key = `${GAME_NAMESPACE}:${gameId}`;
    const value = await this._redisClient.get(key);

    if (!value) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    try {
      const record: IGame = JSON.parse(value);
      return this._convertRedisRecord(ctx, record);
    } catch {
      return;
    }
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
    validGames.sort((a, b) => this.compareGames(a, b, sortBy, order));

    // Pagination
    const { offset, limit } = paginationOpts;
    const paginatedGames = validGames.slice(offset, offset + limit);

    return {
      data: paginatedGames,
      pageInfo: { total: totalCount },
    };
  }

  private compareGames(
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

  public async getAllGames(
    ctx: ApiContext,
    paginationOpts: IPaginationOpts<IGame>
  ): Promise<IPaginatedResult<IGameListItem[]>> {
    const { data, pageInfo } = await this.getAllGamesRaw(paginationOpts);

    const gamesItems = await Promise.all(
      data.map((g) => this._convertRedisRecord(ctx, g))
    );

    // Redis record converting could return undefined - need to filter again
    const validGames = gamesItems.filter(
      (g): g is IGameListItem => !ValueUtils.isBad(g)
    );

    return {
      data: validGames,
      pageInfo: { ...pageInfo },
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
    const key = `${GAME_NAMESPACE}:${gameId}`;

    if (await this._redisClient.get(key)) {
      throw new ClientError(ClientResponse.BAD_GAME_CREATION);
    }

    // Redis entity
    const gameDataRaw: IGame = {
      id: gameId,
      createdBy: createdBy.id,
      title: gameData.title,
      createdAt: new Date(),
      currentRound: 0,
      players: 0,
      maxPlayers: gameData.maxPlayers,
      startedAt: null,
      package: gameData.packageId,
    };

    await this._redisClient.set(key, JSON.stringify(gameDataRaw));

    // List item returned to client
    const gameDataOutput: IGameListItem = {
      ...gameDataRaw,
      createdBy: { id: createdBy.id, username: createdBy.username },
      package: {
        id: gameData.packageId,
        title: packageData.title,
        ageRestriction: gameData.ageRestriction,
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
}
