import { Namespace, Socket } from "socket.io";

import { SocketIOChatService } from "application/services/socket/SocketIOChatService";
import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { GAME_CHAT_HISTORY_RETRIEVAL_LIMIT } from "domain/constants/game";
import { ClientResponse } from "domain/enums/ClientResponse";
import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { ClientError } from "domain/errors/ClientError";
import { ChatMessageGamePayloadDTO } from "domain/types/dto/game/chat/ChatMessageEventPayloadDTO";
import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import { GameJoinEventPayload } from "domain/types/socket/events/game/GameJoinEventPayload";
import { GameLeaveEventPayload } from "domain/types/socket/events/game/GameLeaveEventPayload";
import { GameStartEventPayload } from "domain/types/socket/events/game/GameStartEventPayload";
import { GameValidator } from "domain/validators/GameValidator";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

export class SocketIOGameController {
  constructor(
    private readonly socket: Socket,
    private readonly nsp: Namespace,
    private readonly eventEmitter: SocketIOEventEmitter,
    private readonly socketIOGameService: SocketIOGameService,
    private readonly socketIOChatService: SocketIOChatService
  ) {
    this.eventEmitter.init(this.nsp, this.socket);

    this.socket.on(
      SocketIOGameEvents.JOIN,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        this.handleJoinLobby.bind(this)
      )
    );
    this.socket.on(
      SocketIOGameEvents.START,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        this.handleGameStart.bind(this)
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
    const dto = await GameValidator.validateJoinInput(data);

    if (this.socket.rooms.has(dto.gameId)) {
      throw new ClientError(ClientResponse.ALREADY_IN_GAME);
    }

    const result = await this.socketIOGameService.joinPlayer(
      dto,
      this.socket.id
    );
    const { player, game } = result;

    this.eventEmitter.emit<PlayerDTO>(SocketIOGameEvents.JOIN, player.toDTO(), {
      emitter: SocketEventEmitter.IO,
      gameId: dto.gameId,
    });

    this.eventEmitter.emit<GameJoinEventPayload>(SocketIOGameEvents.GAME_DATA, {
      meta: {
        title: game.title,
      },
      players: game.players.map((player) => player.toDTO()),
      gameState: game.gameState,
      chatMessages: await this.socketIOChatService.getMessages(
        game.id,
        game.createdAt,
        GAME_CHAT_HISTORY_RETRIEVAL_LIMIT
      ),
    });

    this.socket.join(dto.gameId);
  }

  private async handleGameStart() {
    const gameDTO = await this.socketIOGameService.startGame(this.socket.id);

    this.eventEmitter.emit<GameStartEventPayload>(
      SocketIOGameEvents.START,
      {
        currentRound: gameDTO.gameState.currentRound!,
      },
      {
        emitter: SocketEventEmitter.IO,
        gameId: gameDTO.id,
      }
    );
  }

  private async handleSocketDisconnect() {
    try {
      await this.handleLobbyLeave();
    } finally {
      await this.socketIOGameService.removePlayerAuth(this.socket.id);
    }
  }

  private async handleLobbyLeave() {
    const result = await this.socketIOGameService.leaveLobby(this.socket.id);
    if (result.emit && result.data) {
      this.eventEmitter.emit<GameLeaveEventPayload>(
        SocketIOGameEvents.LEAVE,
        { user: result.data.userId },
        {
          emitter: SocketEventEmitter.IO,
          gameId: result.data.gameId,
        }
      );

      this.socket.leave(result.data.gameId);
    }
  }

  private async handleChatMessage(data: any) {
    const dto = await GameValidator.validateChatMessage(data);

    const result = await this.socketIOChatService.processChatMessage(
      this.socket.id,
      dto.message
    );

    this.eventEmitter.emit<ChatMessageGamePayloadDTO>(
      SocketIOEvents.CHAT_MESSAGE,
      {
        uuid: result.uuid,
        timestamp: result.timestamp,
        user: result.user,
        message: result.message,
      },
      {
        emitter: SocketEventEmitter.IO,
        gameId: result.gameId,
      }
    );
  }
}
