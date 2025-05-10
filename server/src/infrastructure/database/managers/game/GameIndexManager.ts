import { ChainableCommander } from "ioredis";

import { GAME_NAMESPACE } from "domain/constants/game";
import { REDIS_LOCK_GAMES_CLEANUP_ORPHANED } from "domain/constants/redis";
import { GameIndexesInputDTO } from "domain/types/dto/game/GameIndexesInputDTO";
import {
  PaginationOptsBase,
  PaginationOrder,
} from "domain/types/pagination/PaginationOpts";
import { RedisService } from "infrastructure/services/redis/RedisService";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class GameIndexManager {
  private readonly INDEX_PREFIX = `${GAME_NAMESPACE}:index`;
  private readonly TEMP_KEY_TTL = 30; // seconds

  constructor(private readonly redisService: RedisService) {
    //
  }

  public addGameToIndexesPipeline(
    pipeline: ChainableCommander,
    gameData: GameIndexesInputDTO
  ): ChainableCommander {
    // Add all index operations to the same pipeline
    pipeline.zadd(
      this._createdAtIndexKey,
      gameData.createdAt.getTime(),
      gameData.id
    );

    pipeline.sadd(this._privacyIndexKey(gameData.isPrivate), gameData.id);

    pipeline.zadd(
      this._titleIndexKey,
      0,
      `${gameData.title.toLowerCase()}:${gameData.id}`
    );

    return pipeline;
  }

  public async removeGameFromIndexes(
    gameId: string,
    gameData: GameIndexesInputDTO
  ) {
    return Promise.all([
      this.redisService.zrem(this._createdAtIndexKey, [gameId]),
      this.redisService.srem(this._privacyIndexKey(gameData.isPrivate), gameId),
      this.redisService.zrem(this._titleIndexKey, [
        `${gameData.title.toLowerCase()}:${gameId}`,
      ]),
    ]);
  }

  /**
   * This method has little lower performance than `removeGameFromIndexes`
   * and should be used only on key expiration
   */
  public async removeGameFromAllIndexes(gameId: string): Promise<void> {
    const createdAtPromise = this.redisService.zrem(this._createdAtIndexKey, [
      gameId,
    ]);

    const privacyPromises = [
      this.redisService.srem(this._privacyIndexKey(true), gameId),
      this.redisService.srem(this._privacyIndexKey(false), gameId),
    ];

    // Use SCAN to find matching entries
    const titlePromise = (async () => {
      let cursor = "0";
      do {
        const [nextCursor, members] = await this.redisService.zScanMatch(
          this._titleIndexKey,
          cursor,
          `*:${gameId}`
        );

        cursor = nextCursor;
        if (members.length > 0) {
          // Extract member names (e.g., "title:gameId")
          // Members are [member1, score1, member2, score2, ...]
          const toRemove = members.filter(
            (_: unknown, index: number) => index % 2 === 0
          );
          if (toRemove.length > 0) {
            await this.redisService.zrem(this._titleIndexKey, toRemove);
          }
        }
      } while (cursor !== "0");
    })();

    // Execute all removals concurrently
    await Promise.all([createdAtPromise, ...privacyPromises, titlePromise]);
  }

  /**
   * Scans the createdAt index and removes gameIds whose game keys are missing or have TTL <= 10 seconds.
   * Cleans up all related indexes using removeGameFromAllIndexes.
   */
  public async cleanOrphanedGameIndexes(): Promise<void> {
    const acquired = await this.redisService.setLockKey(
      REDIS_LOCK_GAMES_CLEANUP_ORPHANED
    );

    if (!acquired) {
      return; // Another instance acquired the lock
    }

    let cursor = "0";
    const orphanedGameIds: string[] = [];

    // Scan createdAt index in chunks
    do {
      const [nextCursor, members] = await this.redisService.zScanCount(
        this._createdAtIndexKey,
        cursor,
        100
      );
      cursor = nextCursor;

      if (members.length === 0) continue;

      // Extract gameIds (members are [gameId, score, ...])
      const gameIds = members.filter(
        (_: unknown, index: number) => index % 2 === 0
      );

      // Pipeline TTL checks for efficiency
      const pipeline = this.redisService.pipeline();
      for (const gameId of gameIds) {
        pipeline.ttl(`game:${gameId}`);
      }
      const ttlResults = await pipeline.exec();

      if (!ttlResults) {
        continue;
      }

      // Check TTLs and mark orphaned gameIds
      gameIds.forEach((gameId: string, index: number) => {
        const ttlResult = ttlResults[index];
        if (ttlResult[1] === null) {
          Logger.error(`TTL command failed for game:${gameId}`);
          return;
        }
        const ttl = ttlResult[1] as number;
        // TTL <= 10 seconds or key doesn't exist (ttl = -2)
        if (ttl <= 10) {
          orphanedGameIds.push(gameId);
        }
      });
    } while (cursor != "0");

    // Clean up orphaned gameIds
    if (orphanedGameIds.length > 0) {
      Logger.info(`Found ${orphanedGameIds.length} orphaned gameIds`);
      const cleanupPromises = orphanedGameIds.map((gameId: string) =>
        this.removeGameFromAllIndexes(gameId).catch((err) => {
          Logger.error(`Failed to clean indexes for game ${gameId}: ${err}`);
        })
      );
      await Promise.all(cleanupPromises);
    }
  }

  public async findGamesByIndex<T>(
    filters: {
      createdAtMin?: Date;
      createdAtMax?: Date;
      isPrivate?: boolean;
      titlePrefix?: string;
    },
    pagination: PaginationOptsBase<T>
  ): Promise<string[]> {
    const tempKey = `${
      this.INDEX_PREFIX
    }:temp:${Date.now()}:${ValueUtils.generateUUID()}`;

    try {
      await this._buildCompositeIndex(tempKey, {
        createdAt: {
          max: filters.createdAtMax,
          min: filters.createdAtMin,
        },
        isPrivate: filters.isPrivate,
        titlePrefix: filters.titlePrefix,
      });
      return this._paginateResults(tempKey, pagination);
    } finally {
      await this.redisService.expire(tempKey, this.TEMP_KEY_TTL);
    }
  }

  private async _buildCompositeIndex(
    tempKey: string,
    filters: {
      createdAt: { min?: Date; max?: Date };
      isPrivate?: boolean;
      titlePrefix?: string;
    }
  ) {
    const indexKeys: string[] = [];
    const anyFilterApplied =
      !!filters.createdAt.max ||
      !!filters.createdAt.min ||
      ValueUtils.isBoolean(filters.isPrivate) ||
      ValueUtils.isString(filters.titlePrefix);

    // If filters is not applied - return default filter by created date
    if (!anyFilterApplied) {
      indexKeys.push(this._createdAtIndexKey);
      return await this.redisService.zinterstore(tempKey, indexKeys.length, [
        ...indexKeys,
        "WEIGHTS",
        ...indexKeys.map((_, i) => (i === 0 ? 1 : 0)),
      ]);
    }

    // Privacy Filter
    if (ValueUtils.isBoolean(filters.isPrivate)) {
      indexKeys.push(this._privacyIndexKey(filters.isPrivate));
    }

    // Title Filter
    if (filters.titlePrefix) {
      const titleKey = await this._prepareTitleFilter(
        filters.titlePrefix,
        tempKey
      );
      if (titleKey) indexKeys.push(titleKey);
    }

    // Date Range Filter
    if (filters.createdAt.max || filters.createdAt.min) {
      // Copy the main createdAt index into a temporary key.
      const createdAtIndexKeyToUse = `${tempKey}:createdAt`;
      await this.redisService.zunionstore(createdAtIndexKeyToUse, 1, [
        this._createdAtIndexKey,
      ]);

      await this.redisService.expire(createdAtIndexKeyToUse, 30);

      // Determine the score boundaries based on the provided dates.
      const minScore = filters.createdAt.min
        ? filters.createdAt.min.getTime()
        : "-inf";
      const maxScore = filters.createdAt.max
        ? filters.createdAt.max.getTime()
        : "+inf";

      // Remove elements outside the desired range from the temporary index.
      await this.redisService.zremrangebyscore(
        createdAtIndexKeyToUse,
        "-inf",
        minScore
      );
      await this.redisService.zremrangebyscore(
        createdAtIndexKeyToUse,
        maxScore,
        "+inf"
      );

      indexKeys.push(createdAtIndexKeyToUse);
    }

    // No indexes matches filters - return empty result without call to redis
    if (indexKeys.length < 1) {
      return [];
    }

    // Combine indexes
    await this.redisService.zinterstore(tempKey, indexKeys.length, [
      ...indexKeys,
      "WEIGHTS",
      ...indexKeys.map((_, i) => (i === 0 ? 1 : 0)),
    ]);
  }

  private async _prepareTitleFilter(prefix: string, tempKey: string) {
    const normalizedPrefix = prefix.toLowerCase();
    const titleMatches = await this.redisService.zrangebylex(
      this._titleIndexKey,
      `[${normalizedPrefix}`,
      `[${normalizedPrefix}\xff`
    );

    if (titleMatches.length > 0) {
      const titleFilterKey = `${tempKey}:title`;
      await this.redisService.sadd(
        titleFilterKey,
        titleMatches.map((m) => m.split(":")[1])
      );
      return titleFilterKey;
    }
    return null;
  }

  private async _paginateResults<T>(
    tempKey: string,
    pagination: PaginationOptsBase<T>
  ) {
    const ids =
      pagination.order === PaginationOrder.DESC
        ? await this.redisService.zrevrange(
            tempKey,
            pagination.offset,
            pagination.offset + pagination.limit - 1
          )
        : await this.redisService.zrange(
            tempKey,
            pagination.offset,
            pagination.offset + pagination.limit - 1
          );

    return ids;
  }

  private get _createdAtIndexKey() {
    return `${this.INDEX_PREFIX}:createdAt`;
  }

  private _privacyIndexKey(isPrivate: boolean) {
    return `${this.INDEX_PREFIX}:isPrivate:${isPrivate}`;
  }

  private get _titleIndexKey() {
    return `${this.INDEX_PREFIX}:title`;
  }
}
