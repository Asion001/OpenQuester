import { USER_CACHE_KEY, USER_CACHE_KEY_TTL } from "domain/constants/cache";
import { ICache } from "domain/types/cache/ICache";
import { User } from "infrastructure/database/models/User";

export class UserCacheUseCase {
  constructor(private readonly cache: ICache) {
    //
  }

  public async get(userId: number) {
    return this.cache.get<User>(this._getCacheKey(userId));
  }

  public async set(user: User) {
    return this.cache.set<User>(
      this._getCacheKey(user.id),
      user,
      USER_CACHE_KEY_TTL
    );
  }

  public async delete(userId: number) {
    return this.cache.delete(this._getCacheKey(userId));
  }

  private _getCacheKey(userId: number) {
    return `${USER_CACHE_KEY}:${userId}`;
  }
}
