import Redis from "ioredis";

import { RedisConfig } from "config/RedisConfig";

export class RedisService {
  private _client: Redis;

  constructor() {
    this._client = RedisConfig.getClient();
  }

  public get connected() {
    return this._client.status === "ready";
  }

  /**
   * @param key cache key. Example of key with namespace: "cache:users:1"
   * @param expire expire time in seconds
   */
  public async set(key: string, value: string, expire?: number): Promise<void> {
    if (expire) {
      await this._client.set(key, value, "EX", expire);
    } else {
      await this._client.set(key, value);
    }
  }

  public async get(key: string): Promise<string | null> {
    return this._client.get(key);
  }

  public async del(key: string): Promise<number> {
    return this._client.del(key);
  }

  public async exists(key: string): Promise<number> {
    return this._client.exists(key);
  }
}
