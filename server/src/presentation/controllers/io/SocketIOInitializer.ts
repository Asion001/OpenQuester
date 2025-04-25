import { Server as IOServer, Namespace, Socket } from "socket.io";

import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

export class SocketIOInitializer {
  constructor(
    private readonly io: IOServer,
    private readonly socketIOGameService: SocketIOGameService
  ) {
    const gameNamespace = this.io.of("/games");
    const gameController = new SocketIOGameController(
      new SocketIOEventEmitter(),
      this.socketIOGameService
    );

    gameNamespace.on("connection", (socket: Socket) => {
      this._initializeGameControllers(gameController, gameNamespace, socket);
    });
  }

  private async _initializeGameControllers(
    gamesController: SocketIOGameController,
    nsp: Namespace,
    socket: Socket
  ) {
    gamesController.registerSocket(nsp, socket);
  }
}
