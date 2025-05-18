export const REDIS_LOCK_KEY = "lock";
export const REDIS_LOCK_EXPIRATION_KEY = `${REDIS_LOCK_KEY}:expiration`;
export const REDIS_LOCK_GAMES_CLEANUP = `${REDIS_LOCK_KEY}:games:cleanup`;
export const REDIS_LOCK_SESSIONS_CLEANUP = `${REDIS_LOCK_KEY}:socket:sessions`;
export const REDIS_LOCK_GAMES_CLEANUP_ORPHANED = `${REDIS_LOCK_KEY}:games:cleanup-orphaned`;
export const REDIS_LOCK_KEY_EXPIRE_DEFAULT = 10; // seconds
export const REDIS_KEY_EXPIRE_EVENT = (dbNum: number) =>
  `__keyevent@${dbNum}__:expired`;
