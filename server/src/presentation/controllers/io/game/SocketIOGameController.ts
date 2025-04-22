import { Socket } from "socket.io";

import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { GameValidator } from "domain/entities/game/GameValidator";
import { ClientResponse } from "domain/enums/ClientResponse";
import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { ClientError } from "domain/errors/ClientError";
import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import { ChatMessageEventPayload } from "domain/types/socket/events/ChatMessageEventPayload";
import { GameJoinEventPayload } from "domain/types/socket/events/game/GameJoinEventPayload";
import { GameLeaveEventPayload } from "domain/types/socket/events/game/GameLeaveEventPayload";
import { SocketUserDataService } from "infrastructure/services/socket/SocketRedisService";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

export class SocketIOGameController {
  constructor(
    private readonly socket: Socket,
    private readonly eventEmitter: SocketIOEventEmitter,
    private readonly socketUserDataService: SocketUserDataService,
    private readonly socketIOGameService: SocketIOGameService,
    private readonly gameValidator: GameValidator
  ) {
    this.socket.on(
      SocketIOGameEvents.JOIN,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleJoinLobby.bind(this)
      )
    );
    this.socket.on(
      SocketIOEvents.DISCONNECT,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        this.handleSocketDisconnect.bind(this)
      )
    );
    this.socket.on(
      SocketIOGameEvents.LEAVE,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        this.handleLobbyLeave.bind(this)
      )
    );
    this.socket.on(
      SocketIOEvents.CHAT_MESSAGE,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleChatMessage.bind(this)
      )
    );
  }

  private async handleJoinLobby(data: any) {
    const dto = await this.gameValidator.validateJoinInput(data);

    const result = await this.socketIOGameService.joinUser(dto, this.socket.id);
    const { player, game } = result;

    this.eventEmitter.emit<PlayerDTO>(SocketIOGameEvents.JOIN, player.toDTO(), {
      emitter: SocketEventEmitter.IO,
      gameId: dto.gameId,
    });

    this.eventEmitter.emit<GameJoinEventPayload>(SocketIOGameEvents.GAME_DATA, {
      players: game.players.map((player) => player.toDTO()),
      gameState: await this.socketIOGameService.gameToListItem(game),
    });

    this.socket.join(dto.gameId);
  }

  private async handleSocketDisconnect() {
    await this.handleLobbyLeave();
    await this.socketUserDataService.remove(this.socket.id);
  }

  private async handleLobbyLeave() {
    const userData = await this._fetchUserData();
    const gameId = userData?.gameId;
    if (!gameId) throw new ClientError(ClientResponse.NOT_IN_GAME);

    const result = await this.socketIOGameService.leaveLobby(
      this.socket.id,
      userData.id,
      gameId
    );
    if (result.emit) {
      this.eventEmitter.emit<GameLeaveEventPayload>(
        SocketIOGameEvents.LEAVE,
        { user: userData.id },
        {
          emitter: SocketEventEmitter.IO,
          gameId: gameId,
        }
      );
      this.socket.leave(gameId);
    }
  }

  private async handleChatMessage(data: any) {
    const dto = await this.gameValidator.validateChatMessage(data);
    const userData = await this._fetchUserData();

    if (!userData || !userData.gameId) {
      throw new ClientError(ClientResponse.NOT_IN_GAME);
    }

    const isMuted = await this.socketIOGameService.isPlayerMuted(
      userData.gameId,
      userData.id
    );

    if (isMuted) {
      throw new ClientError(ClientResponse.YOU_ARE_MUTED);
    }

    this.eventEmitter.emit<ChatMessageEventPayload>(
      SocketIOEvents.CHAT_MESSAGE,
      {
        user: userData.id,
        timestamp: new Date(),
        message: dto.message,
      },
      {
        emitter: SocketEventEmitter.IO,
        gameId: userData.gameId,
      }
    );
  }

  private async _fetchUserData() {
    return this.socketUserDataService.getSocketData(this.socket.id);
  }
}
