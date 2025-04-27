import { ChainableCommander } from "ioredis";

import { GAME_NAMESPACE } from "domain/constants/game";
import { GameIndexesInputDTO } from "domain/types/dto/game/GameIndexesInputDTO";
import {
  PaginationOptsBase,
  PaginationOrder,
} from "domain/types/pagination/PaginationOpts";
import { RedisService } from "infrastructure/services/redis/RedisService";
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
      this.redisService.zrem(this._createdAtIndexKey, gameId),
      this.redisService.srem(this._privacyIndexKey(gameData.isPrivate), gameId),
      this.redisService.zrem(
        this._titleIndexKey,
        `${gameData.title.toLowerCase()}:${gameId}`
      ),
    ]);
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
    const tempKey = `${this.INDEX_PREFIX}:temp:${Date.now()}`;

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
      createdAt?: { min?: Date; max?: Date };
      isPrivate?: boolean;
      titlePrefix?: string;
    }
  ) {
    const indexKeys: string[] = [];

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
    if (filters.createdAt) {
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

    if (indexKeys.length < 1) {
      indexKeys.push(this._createdAtIndexKey);
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
