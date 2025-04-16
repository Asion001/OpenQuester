import { Socket } from "socket.io";

import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { GameValidator } from "domain/entities/game/GameValidator";
import { ClientResponse } from "domain/enums/ClientResponse";
import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { ClientError } from "domain/errors/ClientError";
import { ChatMessageInputData } from "domain/types/socket/ChatMessageInputData";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import { ChatMessageEventPayload } from "domain/types/socket/events/ChatMessageEventPayload";
import { GameJoinEventPayload } from "domain/types/socket/events/game/GameJoinEventPayload";
import { GameLeaveEventPayload } from "domain/types/socket/events/game/GameLeaveEventPayload";
import { PlayerJoinEventPayload } from "domain/types/socket/events/game/PlayerJoinEventPayload";
import { GameJoinData } from "domain/types/socket/game/GameJoinData";
import { SocketUserDataService } from "infrastructure/services/socket/SocketRedisService";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { ValueUtils } from "infrastructure/utils/ValueUtils";
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
        async (data: string) => await this.handleJoinLobby(data)
      )
    );
    this.socket.on(
      SocketIOEvents.DISCONNECT,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        async () => await this.handleSocketDisconnect()
      )
    );
    this.socket.on(
      SocketIOGameEvents.LEAVE,
      SocketWrapper.catchErrors(
        this.eventEmitter,
        async () => await this.handleRoomLeave()
      )
    );
    this.socket.on(
      SocketIOEvents.CHAT_MESSAGE,
      SocketWrapper.catchErrors<string>(
        this.eventEmitter,
        async (data: string) => await this.handleChatMessage(data)
      )
    );
  }

  private async handleJoinLobby(data: string) {
    const gameData = await this._parseEventData<GameJoinData>(data);
    const dto = await this.gameValidator.validateJoinInput(gameData);

    const result = await this.socketIOGameService.joinUser(dto, this.socket.id);
    const { player, game } = result;

    const joinData: PlayerJoinEventPayload = {
      userId: player.meta.id,
      avatar: player.meta.avatar,
      username: player.meta.username,
      balance: player.getScore(),
      restrictions: { muted: player.isMuted, restricted: player.isRestricted },
      role: player.role,
      slot: player.gameSlot,
    };

    this.eventEmitter.emit<PlayerJoinEventPayload>(
      SocketIOGameEvents.JOIN,
      joinData,
      {
        emitter: SocketEventEmitter.IO,
        roomId: dto.gameId,
      }
    );

    // TODO: Add chat history
    this.eventEmitter.emit<GameJoinEventPayload>(SocketIOGameEvents.GAME_DATA, {
      players: game.players,
      gameState: await this.socketIOGameService.gameToListItem(game),
    });

    this.socket.join(dto.gameId);
  }

  private async handleSocketDisconnect() {
    await this.handleRoomLeave();
    await this.socketUserDataService.remove(this.socket.id);
  }

  private async handleRoomLeave() {
    const userData = await this._fetchUserData();
    const gameId = userData?.gameId;
    if (!gameId) throw new ClientError(ClientResponse.NOT_IN_GAME);

    const result = await this.socketIOGameService.leaveRoom(
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
          roomId: gameId,
        }
      );
      this.socket.leave(gameId);
    }
  }

  private async handleChatMessage(data: string) {
    const chatData = await this._parseEventData<ChatMessageInputData>(data);
    const dto = await this.gameValidator.validateChatMessage(chatData);
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
        roomId: userData.gameId,
      }
    );
  }

  private async _fetchUserData() {
    return this.socketUserDataService.getSocketData(this.socket.id);
  }

  private _parseEventData<T>(data: string): Promise<T> {
    return ValueUtils.isObject(data) ? data : JSON.parse(data);
  }
}
