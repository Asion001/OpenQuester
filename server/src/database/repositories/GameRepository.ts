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
import { HttpStatus } from "enums/HttpStatus";
import { User } from "database/models/User";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";

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
      return;
    }

    try {
      const record: IGame = JSON.parse(value);
      return this._convertRedisRecord(ctx, record);
    } catch {
      throw new ClientError(
        ClientResponse.BAD_GAME_DATA,
        HttpStatus.BAD_REQUEST,
        { id: gameId }
      );
    }
  }

  public async getAllGamesRaw(paginationOpts: IPaginationOpts<IGame>) {
    // Fetch all keys matching the pattern
    const keys = await this._redisClient.keys(`${GAME_NAMESPACE}:*`);

    // Initialize the pipeline to fetch all game data
    const pipeline = this._redisClient.pipeline();
    for (const key of keys) {
      pipeline.get(key);
    }

    // Execute the pipeline and process results
    const pipelineResult = await pipeline.exec();

    if (!pipelineResult) {
      return [];
    }

    // Parse each game record, skipping invalid ones
    const games = await Promise.all(
      pipelineResult.map(async (rawRecord) => {
        try {
          return JSON.parse(rawRecord[1] as string) as IGame;
        } catch {
          // Ignore invalid games
          return undefined;
        }
      })
    );

    // Default values if pagination options are not provided
    const offset = ValueUtils.isNumeric(paginationOpts.offset)
      ? paginationOpts.offset
      : 0;
    const limit = ValueUtils.isNumeric(paginationOpts.limit)
      ? paginationOpts.limit
      : 10;
    const sortBy: keyof IGame = paginationOpts.sortBy ?? "createdAt";
    const order: "asc" | "desc" = paginationOpts.order ?? "asc";

    // Sort the games based on the selected field and order
    games.sort((a, b) => {
      if (a === undefined) {
        return order === "asc" ? -1 : 1;
      }

      if (b === undefined) {
        return order === "asc" ? 1 : -1;
      }

      const fieldA = a[sortBy];
      const fieldB = b[sortBy];

      if (fieldA === null && fieldB === null) {
        return 0;
      }

      if (fieldA === null) {
        return order === "asc" ? -1 : 1;
      }

      if (fieldB === null) {
        return order === "asc" ? 1 : -1;
      }

      if (fieldA === fieldB) {
        return 0;
      }

      if (order === "asc") {
        return fieldA > fieldB ? 1 : -1;
      }

      return fieldA < fieldB ? 1 : -1;
    });

    // Paginate results by skipping `offset` number of items and taking `limit` items
    const paginatedGames = games.slice(offset, offset + limit);

    const validGames: IGame[] = paginatedGames.filter(
      (val) => !ValueUtils.isBad(val)
    );

    // TODO: Implement result according to IPaginationResult
    return validGames;
  }

  public async getAllGames(
    ctx: ApiContext,
    paginationOpts: IPaginationOpts<IGame>
  ): Promise<IGameListItem[]> {
    const games = await this.getAllGamesRaw(paginationOpts);

    // TODO: Implement result according to IPaginationResult
    return Promise.all(
      games.map(async (val) => await this._convertRedisRecord(ctx, val))
    );
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
      createdBy: { id: createdBy.id, name: createdBy.name },
      package: {
        id: gameData.packageId,
        title: packageData.title,
        ageRestriction: gameData.ageRestriction,
        createdAt: packageData.created_at,
        rounds: packageData.content.rounds.length,
        tags: packageData.content.metadata.tags,
        author: { id: packageData.author.id, name: packageData.author.name },
      },
    };

    return gameDataOutput;
  }

  private async _convertRedisRecord(
    ctx: ApiContext,
    record: IGame
  ): Promise<IGameListItem> {
    const userRepo = this._getUserRepository(ctx.db);
    const packageRepo = this._getPackageRepository(ctx.db);

    const createdBy = await userRepo.get(record.createdBy, {
      select: ["id", "name"],
      relations: [],
    });

    const packData = await packageRepo.get(record.package);

    if (!packData) {
      throw new ClientError(ClientResponse.BAD_GAME_DATA);
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
          name: packData.author.name,
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
