import Redis from "ioredis";
import { type Request } from "express";

import { RedisConfig } from "config/RedisConfig";
import { IGameCreateData } from "types/game/IGameCreate";
import { IGameListItem } from "types/game/IGameListItem";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import {
  GAME_ID_CHARACTERS,
  GAME_ID_CHARACTERS_LENGTH,
  GAME_NAMESPACE,
} from "constants/game";
import { UserRepository } from "database/repositories/UserRepository";
import { ApiContext } from "services/context/ApiContext";
import { PackageRepository } from "database/repositories/PackageRepository";
import { Database } from "database/Database";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { EGameEvent, IGameEvent } from "types/game/IGameEvent";
import { IGame } from "types/game/IGame";
import { EAgeRestriction } from "enums/game/EAgeRestriction";
import { ValueUtils } from "utils/ValueUtils";

export class GameService {
  private _redisClient: Redis;
  private _packageRepository!: PackageRepository;
  private _userRepository!: UserRepository;

  constructor() {
    this._redisClient = RedisConfig.getClient();
  }

  public async get(
    ctx: ApiContext,
    gameId: string
  ): Promise<IGameListItem | undefined> {
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

  public async list(ctx: ApiContext): Promise<Array<IGameListItem>> {
    const keys = await this._redisClient.keys(`${GAME_NAMESPACE}:*`);

    const pipeline = this._redisClient.pipeline();
    keys.forEach((key) => pipeline.get(key));
    const res = await pipeline.exec();

    if (!res) {
      return [];
    }

    const games = await Promise.all(
      res.map(async (rawRecord) => {
        try {
          const record: IGame = JSON.parse(rawRecord[1] as string);
          return await this._convertRedisRecord(ctx, record);
        } catch {
          // Ignore invalid games
          return;
        }
      })
    );

    return games.filter((val) => !ValueUtils.isBad(val));
  }

  public async create(ctx: ApiContext, req: Request) {
    const data: IGameCreateData = req.body;

    const createdByUser = await UserRepository.getUserByHeader(
      ctx.db,
      req.headers.authorization,
      { select: ["id", "name"], relations: [] }
    );

    const packageRepo = this._getPackageRepository(ctx.db);

    const packageData = await packageRepo.get(data.packageId);

    if (!packageData) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    if (!packageData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const gameId = this._generateGameId();
    const key = `${GAME_NAMESPACE}:${gameId}`;

    const gameData: IGame = {
      id: gameId,
      createdBy: createdByUser.id,
      title: data.title,
      createdAt: new Date(),
      currentRound: 0,
      players: 0,
      maxPlayers: data.maxPlayers,
      startedAt: null,
      package: data.packageId,
    };

    await this._redisClient.set(key, JSON.stringify(gameData));

    const gameDataOutput: IGameListItem = {
      ...gameData,
      createdBy: { id: createdByUser.id, name: createdByUser.name },
      package: {
        id: data.packageId,
        title: packageData.title,
        ageRestriction: data.ageRestriction,
        createdAt: packageData.created_at,
        rounds: packageData.content.rounds.length,
        tags: packageData.content.metadata.tags,
        author: { id: packageData.author.id, name: packageData.author.name },
      },
    };

    this._emitSocketGameCreated(ctx, gameDataOutput);

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

  private _emitSocketGameCreated(ctx: ApiContext, gameData: IGameListItem) {
    ctx.io.emit(SocketIOEvents.GAMES, {
      event: EGameEvent.CREATED,
      data: gameData,
    } as IGameEvent);
  }
}
