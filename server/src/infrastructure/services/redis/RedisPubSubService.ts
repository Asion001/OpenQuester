import { GAME_NAMESPACE } from "domain/constants/game";
import {
  REDIS_KEY_EXPIRE_EVENT,
  REDIS_LOCK_EXPIRATION_KEY,
} from "domain/constants/redis";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { RedisService } from "infrastructure/services/redis/RedisService";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

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

        // TODO: No need to delete, it will be handled correctly when logging system will improve
        Logger.debug(`Key expired: ${message}`);

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
