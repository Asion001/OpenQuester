import { SOCKET_USER_REDIS_NSP } from "domain/constants/socket";
import { SocketRedisUserUpdateDTO } from "domain/types/dto/user/SocketRedisUserUpdateDTO";
import { SocketRedisUserData } from "domain/types/user/SocketRedisUserData";
import { RedisService } from "infrastructure/services/RedisService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class SocketUserDataService {
  constructor(private readonly redisService: RedisService) {
    //
  }

  public async getRaw(socketId: string) {
    return this.redisService.hgetall(this._getKey(socketId));
  }

  public async getSocketData(
    socketId: string
  ): Promise<SocketRedisUserData | null> {
    const data: Record<string, string> = await this.getRaw(socketId);

    return data && !ValueUtils.isEmpty(data)
      ? { id: parseInt(data.id), gameId: data.gameId }
      : null;
  }

  public async set(socketId: string, userId: number) {
    this.redisService.hset(this._getKey(socketId), {
      id: userId,
    });
  }

  public async update(socketId: string, data: SocketRedisUserUpdateDTO) {
    this.redisService.hset(this._getKey(socketId), data);
  }

  public async remove(socketId: string) {
    this.redisService.del(this._getKey(socketId));
  }

  /**
   * Cleans up all socket auth sessions since on server restart connections recreated
   */
  public async cleanupAllSession(): Promise<void> {
    this.redisService.cleanupKeys(this._getKey("*"), "socket session");
  }

  private _getKey(socketId: string) {
    return `${SOCKET_USER_REDIS_NSP}:${socketId}`;
  }
}
