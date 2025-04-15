import { UserService } from "application/services/user/UserService";
import { Game } from "domain/entities/game/Game";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameRoomLeaveData } from "domain/types/game/GameRoomLeaveData";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { GameJoinData } from "domain/types/socket/game/GameJoinData";
import { GameJoinResult } from "domain/types/socket/game/GameJoinResult";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { SocketUserDataService } from "infrastructure/services/socket/SocketRedisService";

export class SocketIOGameService {
  constructor(
    private readonly socketUserDataService: SocketUserDataService,
    private readonly gameRepository: GameRepository,
    private readonly userService: UserService
  ) {}

  public async joinUser(
    data: GameJoinData,
    socketId: string
  ): Promise<GameJoinResult> {
    const user = await this._fetchUser(socketId);
    const game = await this.gameRepository.getGameEntity(data.gameId);

    if (data.role !== PlayerRole.SPECTATOR && !game.checkFreeSlot()) {
      throw new ClientError(ClientResponse.GAME_IS_FULL);
    }

    const player = await game.addUser(user, data.role);

    if (player.isBanned) {
      game.removePlayer(player.meta.id);
      await this.gameRepository.updateGame(game);
      throw new ClientError(ClientResponse.YOU_ARE_BANNED);
    }

    await this.socketUserDataService.update(socketId, {
      id: JSON.stringify(user.id),
      gameId: data.gameId,
    });
    await this.gameRepository.updateGame(game);

    return { game, player };
  }

  public async leaveRoom(
    socketId: string,
    userId: number,
    gameId: string
  ): Promise<GameRoomLeaveData> {
    const game = await this.gameRepository.getGameEntity(gameId);
    if (!game.hasPlayer(userId)) return { emit: false };

    game.removePlayer(userId);

    await this.socketUserDataService.update(socketId, {
      id: JSON.stringify(userId),
      gameId: JSON.stringify(null),
    });
    await this.gameRepository.updateGame(game);

    return { emit: true, data: { game } };
  }

  public async gameToListItem(game: Game) {
    return this.gameRepository.gameToListItemDTO(game);
  }

  private async _fetchUser(socketId: string) {
    const userData = await this.socketUserDataService.getSocketData(socketId);
    if (!userData) {
      throw new ClientError(ClientResponse.SOCKET_USER_NOT_AUTHENTICATED);
    }

    const user = await this.userService.get(userData.id);
    if (!user) {
      throw new ClientError(
        ClientResponse.USER_NOT_FOUND,
        HttpStatus.NOT_FOUND
      );
    }
    return user;
  }
}
