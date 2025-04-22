import { Server as IOServer, Namespace, Socket } from "socket.io";

import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { GameValidator } from "domain/entities/game/GameValidator";
import { SocketUserDataService } from "infrastructure/services/socket/SocketRedisService";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";
import { SocketIOEventEmitter } from "./SocketIOEventEmitter";

export class SocketIOInitializer {
  constructor(
    private readonly io: IOServer,
    private readonly socketIOGameService: SocketIOGameService,
    private readonly socketUserDataService: SocketUserDataService
  ) {
    const gameNamespace = this.io.of("/games");

    gameNamespace.on("connection", (socket: Socket) => {
      this._initializeGameControllers(socket, gameNamespace);
    });
  }

  private async _initializeGameControllers(socket: Socket, nsp: Namespace) {
    new SocketIOGameController(
      socket,
      new SocketIOEventEmitter(nsp, socket),
      this.socketUserDataService,
      this.socketIOGameService,
      new GameValidator()
    );
  }
}
