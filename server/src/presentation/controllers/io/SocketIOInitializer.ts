import { Server, Socket } from "socket.io";

import { ApiContext } from "application/context/ApiContext";
import { SocketIOEvents } from "domain/enums/SocketIOEvents";
import { SocketContextDTO } from "domain/types/context/SocketContextDTO";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";

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
