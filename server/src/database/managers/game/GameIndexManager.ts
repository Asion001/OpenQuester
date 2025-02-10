import Redis, { ChainableCommander } from "ioredis";

import { GAME_NAMESPACE } from "constants/game";
import { GameDTO } from "types/dto/game/GameDTO";
import {
  PaginationOpts,
  PaginationOrder,
} from "types/pagination/PaginationOpts";
import { ValueUtils } from "utils/ValueUtils";

export class GameIndexManager {
  private readonly INDEX_PREFIX = `${GAME_NAMESPACE}:index`;
  private readonly TEMP_KEY_TTL = 30; // seconds

  constructor(private readonly redis: Redis) {
    //
  }

  public addGameToIndexesPipeline(
    pipeline: ChainableCommander,
    gameId: string,
    gameData: GameDTO
  ): ChainableCommander {
    // Add all index operations to the same pipeline
    pipeline.zadd(
      this._createdAtIndexKey,
      gameData.createdAt.getTime(),
      gameId
    );

    if (gameData.isPrivate) {
      pipeline.sadd(this._privacyIndexKey(true), gameId);
    }

    pipeline.zadd(
      this._titleIndexKey,
      0,
      `${gameData.title.toLowerCase()}:${gameId}`
    );

    return pipeline;
  }

  public async addGameToIndexes(gameId: string, gameData: GameDTO) {
    return Promise.all([
      this._addToCreatedAtIndex(gameId, gameData),
      this._addToPrivacyIndex(gameId, gameData),
      this._addToTitleIndex(gameId, gameData),
    ]);
  }

  public async removeGameFromIndexes(gameId: string, gameData: GameDTO) {
    return Promise.all([
      this.redis.zrem(this._createdAtIndexKey, gameId),
      this.redis.srem(this._privacyIndexKey(gameData.isPrivate), gameId),
      this.redis.zrem(
        this._titleIndexKey,
        `${gameData.title.toLowerCase()}:${gameId}`
      ),
    ]);
  }

  public async findGamesByIndex<T>(
    filters: {
      createdAt?: { min?: Date; max?: Date };
      isPrivate?: boolean;
      titlePrefix?: string;
    },
    pagination: PaginationOpts<T>
  ): Promise<{ ids: string[]; total: number }> {
    const tempKey = `${this.INDEX_PREFIX}:temp:${Date.now()}`;

    try {
      await this._buildCompositeIndex(tempKey, filters);
      return this._paginateResults(tempKey, pagination);
    } finally {
      await this.redis.expire(tempKey, this.TEMP_KEY_TTL);
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
    const filterSteps: Promise<unknown>[] = [];
    const indexKeys: string[] = [this._createdAtIndexKey];

    // Privacy Filter
    if (ValueUtils.isBoolean(filters.isPrivate)) {
      indexKeys.push(this._privacyIndexKey(filters.isPrivate));
      filterSteps.push(Promise.resolve()); // No value needed for sets
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
      await this.redis.zunionstore(
        createdAtIndexKeyToUse,
        1,
        this._createdAtIndexKey
      );

      // Determine the score boundaries based on the provided dates.
      const minScore = filters.createdAt.min
        ? filters.createdAt.min.getTime()
        : "-inf";
      const maxScore = filters.createdAt.max
        ? filters.createdAt.max.getTime()
        : "+inf";

      // Remove elements outside the desired range from the temporary index.
      await this.redis.zremrangebyscore(
        createdAtIndexKeyToUse,
        "-inf",
        minScore
      );
      await this.redis.zremrangebyscore(
        createdAtIndexKeyToUse,
        maxScore,
        "+inf"
      );
    }

    // Combine indexes
    await this.redis.zinterstore(
      tempKey,
      indexKeys.length,
      ...indexKeys,
      "WEIGHTS",
      ...indexKeys.map((_, i) => (i === 0 ? 1 : 0))
    );
  }

  private async _prepareTitleFilter(prefix: string, tempKey: string) {
    const normalizedPrefix = prefix.toLowerCase();
    const titleMatches = await this.redis.zrangebylex(
      this._titleIndexKey,
      `[${normalizedPrefix}`,
      `[${normalizedPrefix}\xff`
    );

    if (titleMatches.length > 0) {
      const titleFilterKey = `${tempKey}:title`;
      await this.redis.sadd(
        titleFilterKey,
        ...titleMatches.map((m) => m.split(":")[1])
      );
      return titleFilterKey;
    }
    return null;
  }

  private async _paginateResults<T>(
    tempKey: string,
    pagination: PaginationOpts<T>
  ) {
    const [total, ids] = await Promise.all([
      this.redis.zcard(tempKey),
      pagination.order === PaginationOrder.DESC
        ? this.redis.zrevrange(
            tempKey,
            pagination.offset,
            pagination.offset + pagination.limit - 1
          )
        : this.redis.zrange(
            tempKey,
            pagination.offset,
            pagination.offset + pagination.limit - 1
          ),
    ]);

    return { ids, total };
  }

  private async _addToCreatedAtIndex(gameId: string, gameData: GameDTO) {
    return this.redis.zadd(
      this._createdAtIndexKey,
      gameData.createdAt.getTime(),
      gameId
    );
  }

  private async _addToPrivacyIndex(gameId: string, gameData: GameDTO) {
    if (gameData.isPrivate) {
      await this.redis.sadd(this._privacyIndexKey(true), gameId);
    }
  }

  private async _addToTitleIndex(gameId: string, gameData: GameDTO) {
    await this.redis.zadd(
      this._titleIndexKey,
      0,
      `${gameData.title.toLowerCase()}:${gameId}`
    );
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
