import { UserService } from "application/services/user/UserService";
import { GAME_TTL } from "domain/constants/game";
import { Game } from "domain/entities/game/Game";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameStateMapper } from "domain/mappers/GameStateMapper";
import { GameStateDTO } from "domain/types/dto/game/state/GameStateDTO";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { GameLobbyLeaveData } from "domain/types/game/GameRoomLeaveData";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { GameJoinData } from "domain/types/socket/game/GameJoinData";
import { GameJoinResult } from "domain/types/socket/game/GameJoinResult";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { SocketUserDataService } from "infrastructure/services/socket/SocketUserDataService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class SocketIOGameService {
  constructor(
    private readonly socketUserDataService: SocketUserDataService,
    private readonly gameRepository: GameRepository,
    private readonly userService: UserService
  ) {
    //
  }

  public async joinPlayer(
    data: GameJoinData,
    socketId: string
  ): Promise<GameJoinResult> {
    const user = await this._fetchUser(socketId);
    const game = await this.gameRepository.getGameEntity(data.gameId, GAME_TTL);

    if (data.role === PlayerRole.PLAYER && !game.checkFreeSlot()) {
      throw new ClientError(ClientResponse.GAME_IS_FULL);
    }

    if (data.role === PlayerRole.SHOWMAN && game.checkShowmanSlot()) {
      throw new ClientError(ClientResponse.SHOWMAN_IS_TAKEN);
    }

    const player = await game.addPlayer(
      {
        id: user.id,
        username: user.username,
        avatar: user.avatar ?? null,
      },
      data.role
    );

    if (player.isRestricted && data.role !== PlayerRole.SPECTATOR) {
      game.removePlayer(player.meta.id);
      await this.gameRepository.updateGame(game);
      throw new ClientError(ClientResponse.YOU_ARE_RESTRICTED);
    }

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

  public async startGame(socketId: string) {
    const userData = await this._fetchUserSocketData(socketId);
    const gameId = userData.gameId;

    if (!gameId) {
      throw new ClientError(ClientResponse.NOT_IN_GAME);
    }

    const game = await this.gameRepository.getGameEntity(gameId, GAME_TTL);
    const player = game.getPlayer(userData.id, { fetchDisconnected: false });

    if (player?.role !== PlayerRole.SHOWMAN) {
      throw new ClientError(ClientResponse.ONLY_SHOWMAN_CAN_START);
    }

    if (ValueUtils.isValidDate(game.startedAt)) {
      throw new ClientError(ClientResponse.GAME_ALREADY_STARTED);
    }

    const gameState: GameStateDTO = {
      currentRound: GameStateMapper.getGameRound(game.package, 0),
      isPaused: false,
      questionState: QuestionState.CHOOSING,
      answeredPlayers: null,
      answeringPlayer: null,
      currentQuestion: null,
      readyPlayers: null,
      timer: null,
    };

    game.startedAt = new Date();
    game.gameState = gameState;
    await this.gameRepository.updateGame(game);

    return game;
  }

  public async leaveLobby(socketId: string): Promise<GameLobbyLeaveData> {
    const userData = await this._fetchUserSocketData(socketId);
    const gameId = userData.gameId;

    if (!gameId) {
      throw new ClientError(ClientResponse.NOT_IN_GAME);
    }

    const game = await this.gameRepository.getGameEntity(gameId, GAME_TTL);
    if (!game.hasPlayer(userData.id)) return { emit: false };

    game.removePlayer(userData.id);

    await this.socketUserDataService.update(socketId, {
      id: JSON.stringify(userData.id),
      gameId: JSON.stringify(null),
    });
    await this.gameRepository.updateGame(game);

    return { emit: true, data: { userId: userData.id, gameId: game.id } };
  }

  public async gameToListItem(game: Game) {
    return this.gameRepository.gameToListItemDTO(game);
  }

  public async isPlayerMuted(gameId: string, playerId: number) {
    return this.gameRepository.isPlayerMuted(gameId, playerId);
  }

  public async removePlayerAuth(socketId: string) {
    return this.socketUserDataService.remove(socketId);
  }

  private async _fetchUserSocketData(socketId: string) {
    const userData = await this.socketUserDataService.getSocketData(socketId);

    if (!userData) {
      throw new ClientError(ClientResponse.SOCKET_USER_NOT_AUTHENTICATED);
    }

    return userData;
  }

  private async _fetchUser(socketId: string): Promise<UserDTO> {
    const userData = await this._fetchUserSocketData(socketId);

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
