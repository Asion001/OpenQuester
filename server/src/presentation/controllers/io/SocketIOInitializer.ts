import { Server as IOServer, Namespace, Socket } from "socket.io";

import { SocketIOChatService } from "application/services/socket/SocketIOChatService";
import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

export class SocketIOInitializer {
  constructor(
    private readonly io: IOServer,
    private readonly socketIOGameService: SocketIOGameService,
    private readonly socketIOChatService: SocketIOChatService
  ) {
    const gameNamespace = this.io.of("/games");

    gameNamespace.on("connection", (socket: Socket) => {
      this._initializeGameControllers(gameNamespace, socket);
    });
  }

  private async _initializeGameControllers(nsp: Namespace, socket: Socket) {
    new SocketIOGameController(
      socket,
      nsp,
      new SocketIOEventEmitter(),
      this.socketIOGameService,
      this.socketIOChatService
    );
  }
}
