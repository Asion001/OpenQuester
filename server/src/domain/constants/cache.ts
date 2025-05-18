import { MINUTE_MS } from "domain/constants/time";

export const CACHE_KEY = "cache";
export const REDIS_CACHE_DEFAULT_KEY_EXPIRE = MINUTE_MS * 2;

// User
export const USER_CACHE_KEY = `${CACHE_KEY}:user`;
export const USER_CACHE_KEY_TTL = MINUTE_MS * 5;
