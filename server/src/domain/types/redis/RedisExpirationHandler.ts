export interface RedisExpirationHandler {
  supports(key: string): boolean;
  handle(key: string): Promise<void>;
}
