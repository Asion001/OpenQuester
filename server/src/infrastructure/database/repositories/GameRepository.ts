import { PackageService } from "application/services/package/PackageService";
import { UserService } from "application/services/user/UserService";
import {
  GAME_ID_CHARACTERS,
  GAME_ID_CHARACTERS_LENGTH,
  GAME_NAMESPACE,
  GAME_TTL,
} from "domain/constants/game";
import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import { REDIS_LOCK_GAMES_CLEANUP } from "domain/constants/redis";
import { Game } from "domain/entities/game/Game";
import { Player } from "domain/entities/game/Player";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameMapper } from "domain/mappers/GameMapper";
import { GameStateMapper } from "domain/mappers/GameStateMapper";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { GamePaginationOpts } from "domain/types/pagination/game/GamePaginationOpts";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { User } from "infrastructure/database/models/User";
import { RedisService } from "infrastructure/services/redis/RedisService";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class GameRepository {
  constructor(
    private readonly redisService: RedisService,
    private readonly gameIndexManager: GameIndexManager,
    private readonly userService: UserService,
    private readonly packageService: PackageService,
    private readonly storage: S3StorageService
  ) {
    //
  }

  public getGameKey(gameId: string) {
    return `${GAME_NAMESPACE}:${gameId}`;
  }

  public async getGameEntity(
    gameId: string,
    updatedTtl?: number
  ): Promise<Game> {
    const key = this.getGameKey(gameId);
    const data = await this.redisService.hgetall(key, updatedTtl);

    if (!data || ValueUtils.isEmpty(data)) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    return GameMapper.deserializeGameHash(data);
  }

  public async updateGame(game: Game): Promise<void> {
    const key = this.getGameKey(game.id);
    await this.redisService.hset(
      key,
      GameMapper.serializeGameToHash(game),
      GAME_TTL
    );
  }

  private async _isGameExists(gameId: string) {
    const key = this.getGameKey(gameId);
    const data = await this.redisService.hgetall(key);

    if (data && !ValueUtils.isEmpty(data)) {
      return true;
    }

    return false;
  }

  public async getGame(
    gameId: string,
    updatedTtl?: number
  ): Promise<GameListItemDTO> {
    const game = await this.getGameEntity(gameId, updatedTtl);
    return this.gameToListItemDTO(game);
  }

  public async getAllGames(
    paginationOpts: GamePaginationOpts
  ): Promise<PaginatedResult<GameListItemDTO[]>> {
    const totalKeys = await this.redisService.scan(this.getGameKey("*"));
    const total = totalKeys.length;

    const ids = await this.gameIndexManager.findGamesByIndex(
      {
        createdAtMax: paginationOpts.createdAtMax,
        createdAtMin: paginationOpts.createdAtMin,
        isPrivate: paginationOpts.isPrivate,
        titlePrefix: paginationOpts.titlePrefix,
      },
      {
        limit: paginationOpts.limit,
        offset: paginationOpts.offset,
        order: paginationOpts.order,
        sortBy: paginationOpts.sortBy,
      }
    );

    const packageIds = new Set<number>();
    const userIds = new Set<number>();
    const games = await this._fetchGameDetails(ids);

    if (!games?.length) {
      return { data: [], pageInfo: { total } };
    }

    games.forEach((game: Game) => {
      packageIds.add(game.packageId!);
      userIds.add(game.createdBy);
    });

    const [users, packages] = await Promise.all([
      this.userService.findByIds(Array.from(userIds), {
        select: ["id", "username"],
        relations: [],
      }) as Promise<ShortUserInfo[]>,
      this.packageService.findByIds(Array.from(packageIds), {
        select: PACKAGE_SELECT_FIELDS,
        relations: ["author", "logo", "tags"],
      }),
    ]);

    const userMap = new Map(users.map((u) => [u.id, u]));
    const packageMap = new Map(packages.map((p) => [p.id, p]));

    const gamesItems: GameListItemDTO[] = (
      await Promise.all(
        games.map(async (game: Game) => {
          const createdBy = userMap.get(game.createdBy);
          const packData = packageMap.get(game.packageId!);

          if (!packData || !packData.author || !createdBy) {
            return null;
          }

          return await this._parseGameToListItemDTO(game, createdBy, packData);
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

  public async createGame(
    gameData: GameCreateDTO,
    createdBy: User
  ): Promise<GameListItemDTO> {
    const packageData = await this.packageService.getPackageRaw(
      gameData.packageId
    );

    if (!packageData) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    if (!packageData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    let gameId = "";
    let collisionsCounter = -1;
    do {
      gameId = this._generateGameId();
      collisionsCounter++;

      if (collisionsCounter === 10) {
        throw new ClientError(ClientResponse.BAD_GAME_CREATION);
      }
    } while (await this._isGameExists(gameId));

    if (collisionsCounter > 0) {
      Logger.warn(
        `Game id collisions while game creation: ${collisionsCounter}`
      );
    }

    const key = this.getGameKey(gameId);

    const counts = await this.packageService.getCountsForPackage(
      gameData.packageId
    );

    const game = new Game({
      id: gameId,
      title: gameData.title,
      createdBy: createdBy.id,
      createdAt: new Date(),
      isPrivate: gameData.isPrivate,
      ageRestriction: gameData.ageRestriction,
      maxPlayers: gameData.maxPlayers,
      startedAt: null,
      finishedAt: null,
      package: await packageData.toDTO(this.storage, { fetchIds: true }),
      roundsCount: counts.roundsCount,
      questionsCount: counts.questionsCount,
      players: [],
      gameState: GameStateMapper.initGameState(),
    });

    const pipeline = this.redisService.pipeline();
    pipeline.hset(key, GameMapper.serializeGameToHash(game));
    this.gameIndexManager.addGameToIndexesPipeline(
      pipeline,
      game.toIndexData()
    );
    pipeline.expire(key, GAME_TTL);
    await pipeline.exec();

    return this._parseGameToListItemDTO(game, createdBy, packageData);
  }

  public async deleteGame(user: number, gameId: string) {
    const key = this.getGameKey(gameId);
    const game = await this.getGameEntity(gameId);

    if (!game) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND,
        { gameId }
      );
    }

    if (game.createdBy !== user) {
      throw new ClientError(ClientResponse.ONLY_HOST_CAN_DELETE);
    }

    await this.gameIndexManager.removeGameFromIndexes(
      gameId,
      game.toIndexData()
    );

    await this.redisService.del(key);
  }

  public async gameToListItemDTO(game: Game): Promise<GameListItemDTO> {
    const createdBy = await this.userService.get(game.createdBy, {
      select: ["id", "username"],
      relations: [],
    });

    const packData = await this.packageService.getPackageRaw(
      game.packageId!,
      PACKAGE_SELECT_FIELDS,
      ["author", "tags", "logo"]
    );

    if (!packData) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    if (!packData.author) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    if (!createdBy) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    return this._parseGameToListItemDTO(game, createdBy, packData);
  }

  public async isPlayerMuted(gameId: string, playerId: number) {
    const players = await this.redisService.hget(
      this.getGameKey(gameId),
      "players"
    );

    if (!players) {
      return true;
    }

    const playersArr = JSON.parse(players) as PlayerDTO[];
    const player = playersArr.find((p) => new Player(p).meta.id === playerId);

    return player!.restrictionData.muted ?? true;
  }

  private async _parseGameToListItemDTO(
    game: Game,
    createdBy: ShortUserInfo,
    packData: Package
  ): Promise<GameListItemDTO> {
    const currentRound = game.gameState.currentRound
      ? game.gameState.currentRound.order + 1
      : null;

    const currentQuestion = game.gameState.currentQuestion
      ? game.gameState.currentQuestion
      : null;

    return {
      id: game.id,
      title: game.title,
      ageRestriction: game.ageRestriction,
      isPrivate: game.isPrivate,
      maxPlayers: game.maxPlayers,
      players: game.playersCount,
      createdBy,
      startedAt: game.startedAt,
      finishedAt: game.finishedAt,
      createdAt: game.createdAt,
      currentRound,
      currentQuestion,
      package: {
        id: packData.id,
        title: packData.title,
        description: packData.description,
        ageRestriction: packData.age_restriction,
        author: { id: packData.author.id, username: packData.author.username },
        createdAt: packData.created_at,
        language: packData.language,
        logo: await packData.logoDTO(this.storage),
        roundsCount: game.roundsCount ?? 0,
        questionsCount: game.questionsCount ?? 0,
        tags: packData.tags?.map((tag: PackageTag) => tag.tag) ?? [],
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

  private async _fetchGameDetails(gameIds: string[]) {
    const pipeline = this.redisService.pipeline();
    gameIds.forEach((id) => pipeline.hgetall(this.getGameKey(id)));

    const results = await pipeline.exec();
    if (!results) {
      return;
    }

    return results
      .map(([, data]) => {
        try {
          return GameMapper.deserializeGameHash(data as Record<string, string>);
        } catch {
          // Ignore invalid games
        }
      })
      .filter((g): g is Game => !!g);
  }

  /**
   * Cleans up all active games from Redis on server start.
   */
  public async cleanupAllGames(): Promise<void> {
    const acquired = await this.redisService.setLockKey(
      REDIS_LOCK_GAMES_CLEANUP
    );

    if (!acquired) {
      return; // Another instance acquired the lock
    }

    const startTime = Date.now();

    const keys = await this.redisService.scan(this.getGameKey("*"));
    let gamesCounter = 0;
    for (const key of keys) {
      let playerDisconnected = false;
      try {
        const game = await this.getGameEntity(key.split(":")[1]);
        for (const player of game.players) {
          if (player.gameStatus === PlayerGameStatus.IN_GAME) {
            player.gameStatus = PlayerGameStatus.DISCONNECTED;
            playerDisconnected = true;
          }
        }

        if (playerDisconnected) {
          gamesCounter++;
          await this.updateGame(game);
        }
      } catch {
        // Game not found - ignore (for game:index and other keys)
      }
    }

    Logger.info(
      `Games updated: ${gamesCounter}, in ${Date.now() - startTime} ms`
    );
  }

  public async cleanOrphanedGames() {
    return this.gameIndexManager.cleanOrphanedGameIndexes();
  }
}
