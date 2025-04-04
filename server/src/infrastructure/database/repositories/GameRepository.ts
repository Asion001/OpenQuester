import { type Redis } from "ioredis";

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
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { Package } from "infrastructure/database/models/package/Package";
import { type User } from "infrastructure/database/models/User";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

export class GameRepository {
  constructor(
    private readonly redisClient: Redis,
    private readonly gameIndexManager: GameIndexManager,
    private readonly userRepository: UserRepository,
    private readonly packageRepository: PackageRepository,
    private readonly storage: S3StorageService
  ) {
    //
  }

  public async getGameKey(gameId: string) {
    return `${GAME_NAMESPACE}:${gameId}`;
  }

  public async getGameRaw(gameId: string) {
    const key = await this.getGameKey(gameId);
    const game = await this.redisClient.hgetall(key);

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

  public async getGame(gameId: string) {
    const gameData = await this.getGameRaw(gameId);

    if (!gameData) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    return this._mapRedisRecordToGameItem(gameData);
  }

  public async getAllGames(
    paginationOpts: PaginationOpts<GameDTO>
  ): Promise<PaginatedResult<GameListItemDTO[]>> {
    const { ids, total } = await this.gameIndexManager.findGamesByIndex(
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

    const [users, packages] = await Promise.all([
      this.userRepository.findByIds(Array.from(userIds), {
        select: ["id", "username"],
        relations: [],
      }) as Promise<ShortUserInfo[]>,
      this.packageRepository.findByIds(Array.from(packageIds), {
        select: PACKAGE_SELECT_FIELDS,
        relations: ["author", "logo", "tags"],
      }),
    ]);

    const userMap = new Map(users.map((u) => [u.id, u]));
    const packageMap = new Map(packages.map((p) => [p.id, p]));

    const gamesItems: GameListItemDTO[] = (
      await Promise.all(
        games.map(async (game) => {
          const createdBy = userMap.get(game.createdBy);
          const packData = packageMap.get(game.package);

          if (!packData || !packData.author || !createdBy) {
            return null;
          }

          return await this._gameListItemDTO(game, createdBy, packData);
        })
      )
    ).filter((g): g is GameListItemDTO => g !== null);

    return {
      data: gamesItems,
      pageInfo: {
        total,
      },
    };
  }

  public async createGame(gameData: GameCreateDTO, createdBy: User) {
    const packageData = await this.packageRepository.get(
      gameData.packageId,
      PACKAGE_SELECT_FIELDS,
      ["author"]
    );

    if (!packageData) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    if (!packageData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const gameId = this._generateGameId();
    const key = await this.getGameKey(gameId);

    if (await this.redisClient.get(key)) {
      throw new ClientError(ClientResponse.BAD_GAME_CREATION);
    }

    const counts = await this.packageRepository.getCountsForPackage(
      gameData.packageId
    );

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
      roundsCount: counts.roundsCount,
      questionsCount: counts.questionsCount,
    };

    const pipeline = this.redisClient.pipeline();

    pipeline.hset(key, this._serializeGame(gameDataRaw));

    this.gameIndexManager.addGameToIndexesPipeline(
      pipeline,
      gameDataRaw.id,
      gameDataRaw
    );

    await pipeline.exec();

    return this._gameListItemDTO(gameDataRaw, createdBy, packageData);
  }

  public async deleteGame(gameId: string) {
    const key = await this.getGameKey(gameId);
    const gameData = await this.getGameRaw(gameId);

    if (!gameData) {
      throw new ClientError(ClientResponse.GAME_NOT_FOUND);
    }

    await this.gameIndexManager.removeGameFromIndexes(gameId, gameData);
    await this.redisClient.del(key);
  }

  private async _mapRedisRecordToGameItem(
    record: GameDTO
  ): Promise<GameListItemDTO | undefined> {
    const createdBy = await this.userRepository.get(record.createdBy, {
      select: ["id", "username"],
      relations: [],
    });

    const packData = await this.packageRepository.get(
      record.package,
      PACKAGE_SELECT_FIELDS,
      ["author", "tags", "logo"]
    );

    if (!packData) {
      return;
    }

    if (!packData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    if (!createdBy) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    return this._gameListItemDTO(record, createdBy, packData);
  }

  private async _gameListItemDTO(
    record: GameDTO,
    createdBy: ShortUserInfo,
    packData: Package
  ): Promise<GameListItemDTO> {
    return {
      id: record.id,
      title: record.title,
      ageRestriction: record.ageRestriction,
      isPrivate: record.isPrivate,
      maxPlayers: record.maxPlayers,
      players: record.players,
      createdBy,
      startedAt: record.startedAt,
      createdAt: record.createdAt,
      currentRound: record.currentRound,
      package: {
        id: packData.id,
        title: packData.title,
        description: packData.description,
        ageRestriction: packData.age_restriction,
        author: {
          id: packData.author.id,
          username: packData.author.username,
        },
        createdAt: packData.created_at,
        language: packData.language,
        logo: await packData.logoDTO(this.storage),
        roundsCount: record.roundsCount ?? 0,
        questionsCount: record.questionsCount ?? 0,
        tags: packData.tags?.map((tag) => tag.tag) ?? [],
      },
    };
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

    if (fieldA === null || fieldA === undefined) {
      return order === "asc" ? -1 : 1;
    }

    if (fieldB === null || fieldB === undefined) {
      return order === "asc" ? 1 : -1;
    }

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
      "roundsCount",
      "questionsCount",
    ];

    return requiredKeys.every(
      (key) => typeof hash[key as keyof GameRedisHashDTO] === "string"
    );
  }

  private async _fetchGameDetails(gameIds: string[]) {
    const pipeline = this.redisClient.pipeline();
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
      roundsCount: game.roundsCount ?? 0,
      questionsCount: game.questionsCount ?? 0,
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
      roundsCount: Number(data.roundsCount),
      questionsCount: Number(data.questionsCount),
    };
  }
}
