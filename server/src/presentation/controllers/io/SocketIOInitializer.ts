import { Server as IOServer, Socket } from "socket.io";

import { GameService } from "application/services/game/GameService";
import { UserService } from "application/services/user/UserService";
import { GameRoom } from "domain/entities/game/GameRoom";
import { GameValidator } from "domain/entities/game/GameValidator";
import { SocketRedisService } from "infrastructure/services/socket/SocketRedisService";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";

export class SocketIOInitializer {
  private _gameRooms: Map<string, GameRoom> = new Map();
  constructor(
    private readonly io: IOServer,
    private readonly userService: UserService,
    private readonly gameService: GameService,
    private readonly socketRedisService: SocketRedisService
  ) {
    const gameNamespace = this.io.of("/games");

    gameNamespace.on("connection", (socket: Socket) => {
      this._initializeGameControllers(socket);
    });
  }

  private async _initializeGameControllers(socket: Socket) {
    new SocketIOGameController(
      socket,
      this.socketRedisService,
      this._gameRooms,
      this.gameService,
      this.userService,
      new GameValidator()
    );
  }
}
