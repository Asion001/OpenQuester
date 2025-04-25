import { Namespace, Socket } from "socket.io";

import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
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
import { GameValidator } from "domain/validators/GameValidator";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

export class SocketIOGameController {
  private _socket!: Socket;

  constructor(
    private readonly eventEmitter: SocketIOEventEmitter,
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
      SocketIOGameEvents.START,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleGameStart.bind(this)
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

  private async handleGameStart() {
    //
  }

  private async handleSocketDisconnect() {
    await this.handleLobbyLeave();
    await this.socketIOGameService.removePlayerAuth(this._socket.id);
  }

  private async handleLobbyLeave() {
    const result = await this.socketIOGameService.leaveLobby(this._socket.id);
    if (result.emit && result.data) {
      this.eventEmitter.emit<GameLeaveEventPayload>(
        SocketIOGameEvents.LEAVE,
        { user: result.data.userId },
        {
          emitter: SocketEventEmitter.IO,
          gameId: result.data.gameId,
        }
      );

      this._socket.leave(result.data.gameId);
    }
  }

  private async handleChatMessage(data: any) {
    const dto = await GameValidator.validateChatMessage(data);

    const result = await this.socketIOGameService.processChatMessage(
      this._socket.id
    );

    this.eventEmitter.emit<ChatMessageEventPayload>(
      SocketIOEvents.CHAT_MESSAGE,
      {
        user: result.userId,
        timestamp: new Date(),
        message: dto.message,
      },
      {
        emitter: SocketEventEmitter.IO,
        gameId: result.gameId,
      }
    );
  }
}
