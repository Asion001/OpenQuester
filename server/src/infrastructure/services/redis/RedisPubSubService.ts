import { REDIS_KEY_EXPIRE_EVENT } from "domain/constants/redis";
import { RedisExpirationHandler } from "domain/types/redis/RedisExpirationHandler";
import { Environment } from "infrastructure/config/Environment";
import { RedisService } from "infrastructure/services/redis/RedisService";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class RedisPubSubService {
  constructor(
    private readonly redisService: RedisService,
    private readonly handlers: RedisExpirationHandler[]
  ) {
    //
  }

  public async initKeyExpirationHandling() {
    await this.redisService.subscribe(
      REDIS_KEY_EXPIRE_EVENT(Environment.instance.REDIS_DB_NUMBER)
    );

    this.redisService.on("message", async (_, message) => {
      if (!ValueUtils.isString(message)) return;

      Logger.debug(`Key expired: ${message}`);

      for (const handler of this.handlers) {
        if (handler.supports(message)) {
          await handler.handle(message);
          break;
        }
      }
    });

    Logger.info("Redis subscribed for keys expiration");
  }
}
