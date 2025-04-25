import { Namespace, Socket } from "socket.io";

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

// TODO: Implement order field for every round/theme/question
// TODO: Implement GameStateMapper that will map current round info that should be displayed
// TODO: Handle game start - retrieve first round info
export class SocketIOGameController {
  private _socket!: Socket;

  constructor(
    private readonly eventEmitter: SocketIOEventEmitter,
    private readonly socketUserDataService: SocketUserDataService,
    private readonly socketIOGameService: SocketIOGameService
  ) {
    //
  }

  public registerSocket(nsp: Namespace, socket: Socket) {
    this.eventEmitter.init(nsp, socket);
    this._socket = socket;

    this._socket.on(
      SocketIOGameEvents.JOIN,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleJoinLobby.bind(this)
      )
    );
    this._socket.on(
      SocketIOEvents.DISCONNECT,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        this.handleSocketDisconnect.bind(this)
      )
    );
    this._socket.on(
      SocketIOGameEvents.LEAVE,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        this.handleLobbyLeave.bind(this)
      )
    );
    this._socket.on(
      SocketIOEvents.CHAT_MESSAGE,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleChatMessage.bind(this)
      )
    );
  }

  private async handleJoinLobby(data: any) {
    const dto = await GameValidator.validateJoinInput(data);

    if (this._socket.rooms.has(dto.gameId)) {
      throw new ClientError(ClientResponse.ALREADY_IN_GAME);
    }

    const result = await this.socketIOGameService.joinPlayer(
      dto,
      this._socket.id
    );
    const { player, game } = result;

    this.eventEmitter.emit<PlayerDTO>(SocketIOGameEvents.JOIN, player.toDTO(), {
      emitter: SocketEventEmitter.IO,
      gameId: dto.gameId,
    });

    this.eventEmitter.emit<GameJoinEventPayload>(SocketIOGameEvents.GAME_DATA, {
      players: game.players.map((player) => player.toDTO()),
      gameState: game.package,
    });

    this._socket.join(dto.gameId);
  }

  private async handleSocketDisconnect() {
    await this.handleLobbyLeave();
    await this.socketUserDataService.remove(this._socket.id);
  }

  private async handleLobbyLeave() {
    const userData = await this._fetchUserData();
    const gameId = userData?.gameId;

    if (!gameId) {
      throw new ClientError(ClientResponse.GAME_NOT_FOUND);
    }

    const result = await this.socketIOGameService.leaveLobby(
      this._socket.id,
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
      this._socket.leave(gameId);
    }
  }

  private async handleChatMessage(data: any) {
    const dto = await GameValidator.validateChatMessage(data);
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
    return this.socketUserDataService.getSocketData(this._socket.id);
  }
}
