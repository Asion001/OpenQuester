import { Server as IOServer, Socket } from "socket.io";

import { SocketIOEvents } from "domain/enums/SocketIOEvents";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";

export class SocketIOInitializer {
  constructor(private readonly io: IOServer) {
    this.io.on(SocketIOEvents.CONNECTION, (socket: Socket) => {
      this._initializeControllers(socket);
    });
  }

  private _initializeControllers(socket: Socket) {
    new SocketIOGameController(socket);
  }
}
