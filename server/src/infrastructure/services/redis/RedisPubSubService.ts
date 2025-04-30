import { GAME_NAMESPACE } from "domain/constants/game";
import {
  REDIS_KEY_EXPIRE_EVENT,
  REDIS_LOCK_EXPIRATION_KEY,
} from "domain/constants/redis";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";
import { RedisService } from "./RedisService";

export class RedisPubSubService {
  constructor(
    private readonly redisService: RedisService,
    private readonly gameIndexManager: GameIndexManager
  ) {
    //
  }

  public async initKeyExpirationHandling() {
    await this.redisService.subscribe(REDIS_KEY_EXPIRE_EVENT);

    this.redisService.on(
      "message",
      async (channel: string, message: string) => {
        if (!ValueUtils.isString(message)) {
          return;
        }

        if (message.startsWith(`${GAME_NAMESPACE}:`)) {
          await this._handleGameExpiration(message);
        }
      }
    );
    Logger.info("Redis subscribed for keys expiration");
  }

  private async _handleGameExpiration(message: string) {
    const lockKey = this._getLockKey(message);
    const acquired = await this.redisService.setLockKey(lockKey);

    if (!acquired) {
      return; // Another instance acquired the lock
    }

    const [, gameId] = message.split(":");
    await this.gameIndexManager.removeGameFromAllIndexes(gameId);
  }

  private _getLockKey(value: string) {
    return `${REDIS_LOCK_EXPIRATION_KEY}:${value}`;
  }
}
