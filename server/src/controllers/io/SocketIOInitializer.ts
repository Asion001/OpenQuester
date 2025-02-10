import { Server, Socket } from "socket.io";

import { SocketIOGameController } from "controllers/io/game/SocketIOGameController";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { ApiContext } from "services/context/ApiContext";
import { SocketContextDTO } from "types/context/SocketContextDTO";

export class SocketIOInitializer {
  private _io: Server;

  constructor(private readonly ctx: ApiContext) {
    this._io = this.ctx.io;

    this._io.on(SocketIOEvents.CONNECTION, (socket: Socket) => {
      this._initializeControllers(socket);
    });
  }

  private _initializeControllers(socket: Socket) {
    const socketContext: SocketContextDTO = { socket, apiContext: this.ctx };

    new SocketIOGameController(socketContext);
  }
}
