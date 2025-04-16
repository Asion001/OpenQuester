import Redis from "ioredis";

import { RedisConfig } from "infrastructure/config/RedisConfig";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class RedisService {
  private _client: Redis;

  constructor() {
    this._client = RedisConfig.getClient();
  }

  public get connected() {
    return this._client.status === "ready";
  }

  /**
   * @param key storing key. Example of key with namespace: "cache:users:1"
   * @param expire expire time in seconds
   */
  public async set(key: string, value: string, expire?: number): Promise<void> {
    if (expire) {
      await this._client.set(key, value, "EX", expire);
    } else {
      await this._client.set(key, value);
    }
  }

  /**
   * Retrieves all keys matching a pattern using Redis SCAN.
   * @param pattern The pattern to match (e.g., "game:room:*").
   * @returns An array of matching keys.
   */
  public async scan(pattern: string): Promise<string[]> {
    const keys: string[] = [];
    let cursor = "0";
    do {
      const reply = await this._client.scan(
        cursor,
        "MATCH",
        pattern,
        "COUNT",
        100
      );
      cursor = reply[0];
      keys.push(...reply[1]);
    } while (cursor !== "0");
    return keys;
  }

  /**
   * Deletes multiple keys from Redis.
   */
  public async delMultiple(keys: string[]): Promise<number> {
    if (keys.length === 0) return 0;
    return this._client.unlink(...keys);
  }

  /**
   * Cleans up all keys of specified key patter
   * @param keyPattern Key pattern to cleanup, for example `game:*`
   * @param logEntity Log entity for correct logs, for example "game"
   */
  public async cleanupKeys(
    keyPattern: string,
    logEntity: string
  ): Promise<void> {
    try {
      const keys = await this.scan(keyPattern);
      if (keys.length > 0) {
        await this.delMultiple(keys);
        Logger.info(`Cleaned up ${keys.length} ${logEntity}(s)`);
      } else {
        Logger.info(`No ${logEntity}s to clean up`);
      }
    } catch (err: any) {
      Logger.error(`Failed to clean up ${logEntity}(s): ${err.message}`);
    }
  }

  public async hgetall(
    key: string,
    updateTtl?: number
  ): Promise<Record<string, string>> {
    const values = await this._client.hgetall(key);
    if (updateTtl && values !== null && !ValueUtils.isEmpty(values)) {
      await this.expire(key, updateTtl);
    }
    return values;
  }

  public async hget(
    key: string,
    field: string,
    updateTtl?: number
  ): Promise<string | null> {
    const value = await this._client.hget(key, field);
    if (updateTtl && value !== null && !ValueUtils.isEmpty(value)) {
      await this.expire(key, updateTtl);
    }
    return value;
  }

  public async get(key: string, updateTtl?: number): Promise<string | null> {
    const value = await this._client.get(key);
    if (updateTtl && value !== null && !ValueUtils.isEmpty(value)) {
      await this.expire(key, updateTtl);
    }
    return value;
  }

  public async hset(
    key: string,
    fields: any,
    expire?: number
  ): Promise<number> {
    if (expire) {
      const pipeline = this._client.pipeline();
      pipeline.hset(key, fields);
      pipeline.expire(key, expire);
      const results = await pipeline.exec();

      if (!results) {
        return -1;
      }

      for (const [err] of results) {
        if (err) {
          throw err;
        }
      }

      return results[0][1] as number;
    } else {
      return this._client.hset(key, fields);
    }
  }

  /**
   * Set a key's time to live in seconds
   */
  public async expire(key: string, ttl: number): Promise<number> {
    return this._client.expire(key, ttl);
  }

  public pipeline() {
    return this._client.pipeline();
  }

  public async del(key: string): Promise<number> {
    return this._client.del(key);
  }
}
