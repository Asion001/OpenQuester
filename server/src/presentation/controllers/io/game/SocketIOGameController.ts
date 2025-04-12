import { Socket } from "socket.io";

import { GameService } from "application/services/game/GameService";
import { UserService } from "application/services/user/UserService";
import { GameRoom } from "domain/entities/game/GameRoom";
import { GameValidator } from "domain/entities/game/GameValidator";
import { Player } from "domain/entities/game/Player";
import { SocketClientResponse } from "domain/enums/SocketClientResponse";
import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { ErrorController } from "domain/errors/ErrorController";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { SocketRedisUserData } from "domain/types/user/SocketRedisUserData";
import { SocketRedisService } from "infrastructure/services/socket/SocketRedisService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export interface GameJoinData {
  gameId: string;
  role: PlayerRole;
}

export interface ChatMessageData {
  message: string;
}

/**
 * Controller of game actions for each player. Handles all player emitted events
 */
export class SocketIOGameController {
  private _gameId: string = "";

  private _playerData?: Player;
  private _playerRole?: PlayerRole;
  private _user?: UserDTO;
  private _room?: GameRoom;

  constructor(
    private readonly socket: Socket,
    private readonly socketRedisService: SocketRedisService,
    private readonly gameRooms: Map<string, GameRoom>,
    private readonly gameService: GameService,
    private readonly userService: UserService,
    private readonly gameValidator: GameValidator
  ) {
    this.socket.on(SocketIOGameEvents.JOIN, async (data: string) => {
      try {
        const gameData = await this._parseEventData<GameJoinData>(data);

        await this._handleJoinLobby(gameData);
      } catch (err: unknown) {
        const error = await ErrorController.resolveError(err);
        this._emitError(`Invalid game join input: ${error.message}`);
      }
    });

    // Handle player leave
    this.socket.on(SocketIOEvents.DISCONNECT, () => {
      this._handleLeave();
      this.socketRedisService.remove(this.socket.id);
    });
    this.socket.on(SocketIOGameEvents.LEAVE, () => this._handleLeave());

    this.socket.on(SocketIOEvents.CHAT_MESSAGE, async (data: string) => {
      try {
        const chatData = await this._parseEventData<ChatMessageData>(data);

        const dto = await this.gameValidator.validateChatMessage(chatData);
        this._emitChatMessage(dto.message);
      } catch (err: any) {
        this._emitError(`Invalid game join input: ${err.message}`);
      }
    });
  }

  private _emitChatMessage(message: string) {
    this.socket.to(this._gameId).emit(SocketIOEvents.CHAT_MESSAGE, {
      user: this._user!.id,
      username: this._user!.username,
      timestamp: new Date().getTime(),
      message,
    });
  }

  private async _handleJoinLobby(data: GameJoinData) {
    const dto = await this.gameValidator.validateJoinInput(data);
    this._gameId = dto.gameId;
    this._playerRole = dto.role;

    this._setRoom();
    await this._initUser();

    // If error emitted and data is not initialized
    if (!this._user?.id || !this._room) {
      return;
    }

    if (
      this._room.isInitialized &&
      this._playerRole !== PlayerRole.SPECTATOR &&
      !this._room.checkFreeSlot()
    ) {
      return this._emitError(SocketClientResponse.GAME_IS_FULL);
    }

    const gameData = await this.gameService.get(this._gameId);
    if (!gameData) {
      this.gameRooms.delete(this._gameId);
      return this._emitError(SocketClientResponse.GAME_DOES_NOT_EXISTS);
    }
    await this._room?.init(gameData);

    this._playerData = await this._room.addUser(this._user, this._playerRole);

    this.socket.to(this._gameId).emit(SocketIOGameEvents.JOIN, {
      userId: this._user.id,
      username: this._user.username,
      role: this._playerRole,
      restrictions: {
        muted: this._playerData.isMuted,
        restricted: this._playerData.isRestricted,
      },
      balance: this._playerData.getBalance(),
    });

    this.socket.emit(SocketIOGameEvents.GAME_DATA, {
      players: this._room.getPlayers(),
      gameState: this._room.gameData,
    });

    this.socket.join(this._gameId);
  }

  private _setRoom() {
    if (!this.gameRooms.has(this._gameId)) {
      this.gameRooms.set(this._gameId, new GameRoom());
    }
    this._room = this.gameRooms.get(this._gameId);
  }

  private async _initUser() {
    try {
      const userData = await this.socketRedisService.get(this.socket.id);

      // TODO: Implement SocketClientResponse
      if (!userData) {
        return this._emitError(SocketClientResponse.USER_NOT_AUTHENTICATED);
      }

      const userParsed: SocketRedisUserData = JSON.parse(userData);

      // Check if user not in room to avoid DB call
      if (this._room!.hasPlayer(userParsed.id)) {
        return this._emitError(SocketClientResponse.USER_ALREADY_IN_GAME);
      }

      // TODO: Fetch only fields that is required
      const user = await this.userService.get(userParsed.id);

      if (!user) {
        return this._emitError(SocketClientResponse.USER_NOT_FOUND);
      }

      this._user = user;
    } catch {
      return this._emitError(SocketClientResponse.USER_DATA_CORRUPTED);
    }
  }

  private _handleLeave() {
    if (!this._user || !this._room?.hasPlayer(this._user.id)) {
      return;
    }

    this.socket.to(this._gameId).emit("userLeave", {
      user: this._user.id,
    });
    this._room.removeUser(this._user.id);
    this.socket.leave(this._gameId);
  }

  private _emitError(error: string) {
    // TODO: Translate error
    this.socket.emit("error", {
      message: error,
    });
    return;
  }

  private _parseEventData<T>(data: string): Promise<T> {
    return ValueUtils.isObject(data) ? data : JSON.parse(data);
  }
}
