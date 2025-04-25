import {
  SOCKET_GAME_AUTH_TTL,
  SOCKET_USER_REDIS_NSP,
} from "domain/constants/socket";
import { SocketRedisUserUpdateDTO } from "domain/types/dto/user/SocketRedisUserUpdateDTO";
import { SocketRedisUserData } from "domain/types/user/SocketRedisUserData";
import { RedisRepository } from "infrastructure/database/repositories/RedisRepository";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class SocketUserDataRepository {
  // TODO: Use service
  constructor(private readonly redisRepository: RedisRepository) {
    //
  }

  public async getRaw(socketId: string) {
    return this.redisRepository.hgetall(this._getKey(socketId));
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
    this.redisRepository.hset(
      this._getKey(socketId),
      {
        id: userId,
      },
      SOCKET_GAME_AUTH_TTL
    );
  }

  public async update(socketId: string, data: SocketRedisUserUpdateDTO) {
    this.redisRepository.hset(
      this._getKey(socketId),
      data,
      SOCKET_GAME_AUTH_TTL
    );
  }

  public async remove(socketId: string) {
    this.redisRepository.del(this._getKey(socketId));
  }

  /**
   * Cleans up all socket auth sessions since on server restart connections recreated
   */
  public async cleanupAllSession(): Promise<void> {
    this.redisRepository.cleanupKeys(this._getKey("*"), "socket session");
  }

  private _getKey(socketId: string) {
    return `${SOCKET_USER_REDIS_NSP}:${socketId}`;
  }
}
