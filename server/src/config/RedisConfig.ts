import Redis from "ioredis";

import { Environment } from "config/Environment";
import { Logger } from "utils/Logger";

const REDIS_PREFIX = "[REDIS]: ";

export class RedisConfig {
  private static _client: Redis;
  private static _env: Environment;

  public static getClient(): Redis {
    if (!this._client) {
      this._client = new Redis(this._getRedisLink());
    }
    return this._client;
  }

  public static async waitForConnection(): Promise<void> {
    const client = this.getClient();
    return new Promise((resolve, reject) => {
      client.on("ready", () => {
        Logger.info("Redis client is ready", REDIS_PREFIX);
        resolve();
      });
      client.on("error", (error) => {
        Logger.error(`Redis client error: ${error}`, REDIS_PREFIX);
        reject(error);
      });
    });
  }

  public static async disconnect() {
    if (this._client && this._client.status === "ready") {
      this._client.disconnect(false);
    }

    try {
      await this._client.ping();
    } catch {
      Logger.warn("Redis connection closed", REDIS_PREFIX);
    }
  }

  private static _getRedisLink(): string {
    if (!this._env) {
      this._env = Environment?.instance;
    }
    const username = this._env.REDIS_USERNAME || "";
    const password = this._env.REDIS_PASSWORD || "";
    const host = this._env.REDIS_HOST || "localhost";
    const port = this._env.REDIS_PORT || "6379";
    const dbNumber = this._env.REDIS_DB_NUMBER || "0";

    let auth = "";
    if (username && password) {
      auth = `${username}:${password}@`;
    } else if (username) {
      auth = `${username}@`;
    }

    // redis[s]://[[username][:password]@][host][:port][/db-number]
    return `redis://${auth}${host}:${port}/${dbNumber}`;
  }
}
