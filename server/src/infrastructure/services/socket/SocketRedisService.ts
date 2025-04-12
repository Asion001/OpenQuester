import { SOCKET_USER_REDIS_NSP } from "domain/constants/socket";
import { SocketRedisUserData } from "domain/types/user/SocketRedisUserData";
import { RedisService } from "infrastructure/services/RedisService";

export class SocketRedisService {
  constructor(private readonly redisService: RedisService) {
    //
  }

  public async get(socketId: string) {
    return this.redisService.get(this._getKey(socketId));
  }

  public async getIfExists(
    socketId: string
  ): Promise<SocketRedisUserData | null> {
    const data: string | null = await this.get(socketId);

    return data ? JSON.parse(data) : null;
  }

  public async set(socketId: string, userId: number) {
    await this.redisService.set(
      this._getKey(socketId),
      JSON.stringify({
        id: userId,
      })
    );
  }

  public async remove(socketId: string) {
    await this.redisService.del(this._getKey(socketId));
  }

  private _getKey(socketId: string) {
    return `${SOCKET_USER_REDIS_NSP}:${socketId}`;
  }
}
