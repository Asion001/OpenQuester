import { RedisRepository } from "infrastructure/database/repositories/RedisRepository";
import { RedisKey, RedisValue } from "ioredis";

export class RedisService {
  constructor(private readonly redisRepository: RedisRepository) {
    //
  }

  /**
   * @param key storing key. Example of key with namespace: "cache:users:1"
   * @param expire expire time in seconds
   */
  public async set(key: string, value: string, expire?: number): Promise<void> {
    if (expire) {
      await this.redisRepository.set(key, value, expire);
    } else {
      await this.redisRepository.set(key, value);
    }
  }

  /**
   * Retrieves all keys matching a pattern using Redis SCAN.
   * @param pattern The pattern to match (e.g., "game:*").
   * @returns An array of matching keys.
   */
  public async scan(pattern: string): Promise<string[]> {
    return this.redisRepository.scan(pattern);
  }

  /**
   * Deletes multiple keys from Redis.
   */
  public async delMultiple(keys: string[]): Promise<number> {
    if (keys.length === 0) return 0;
    return this.redisRepository.delMultiple(keys);
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
    return this.redisRepository.cleanupKeys(keyPattern, logEntity);
  }

  public async hgetall(
    key: string,
    updateTtl?: number
  ): Promise<Record<string, string>> {
    return this.redisRepository.hgetall(key, updateTtl);
  }

  public async hget(
    key: string,
    field: string,
    updateTtl?: number
  ): Promise<string | null> {
    return this.redisRepository.hget(key, field, updateTtl);
  }

  public async get(key: string, updateTtl?: number): Promise<string | null> {
    return this.redisRepository.get(key, updateTtl);
  }

  public async hset(
    key: string,
    fields: any,
    expire?: number
  ): Promise<number> {
    return this.redisRepository.hset(key, fields, expire);
  }

  /**
   * Set a key's time to live in seconds
   */
  public async expire(key: string, ttl: number): Promise<number> {
    return this.redisRepository.expire(key, ttl);
  }

  public pipeline() {
    return this.redisRepository.pipeline();
  }

  public async del(key: string): Promise<number> {
    return this.redisRepository.del(key);
  }

  public async zrem(key: string, members: string) {
    return this.redisRepository.zrem(key, members);
  }

  public async srem(key: string, members: string) {
    return this.redisRepository.srem(key, members);
  }

  public async zunionstore(
    destination: string,
    numKeys: number | string,
    keys: string[]
  ) {
    return this.redisRepository.zunionstore(destination, numKeys, keys);
  }

  public async zremrangebyscore(
    key: string,
    min: number | string,
    max: number | string
  ) {
    return this.redisRepository.zremrangebyscore(key, min, max);
  }

  public async zinterstore(
    destination: string,
    numKeys: number,
    keys: (RedisKey | RedisValue)[]
  ) {
    return this.redisRepository.zinterstore(destination, numKeys, keys);
  }

  public async zrangebylex(key: string, min: string, max: string) {
    return this.redisRepository.zrangebylex(key, min, max);
  }

  public async sadd(key: string, members: string[]) {
    return this.redisRepository.sadd(key, members);
  }

  public async zadd(key: string, scoreMembers: string[]) {
    return this.redisRepository.zadd(key, scoreMembers);
  }

  public async zcard(key: string) {
    return this.redisRepository.zcard(key);
  }

  public async zrevrange(key: string, start: number, stop: number) {
    return this.redisRepository.zrevrange(key, start, stop);
  }

  public async zrange(key: string, start: number, stop: number) {
    return this.redisRepository.zrange(key, start, stop);
  }
}
