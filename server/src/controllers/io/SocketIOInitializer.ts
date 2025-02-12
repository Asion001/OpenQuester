import { Server, Socket } from "socket.io";
import { ApiContext } from "services/context/ApiContext";
import { SocketIOGameController } from "controllers/io/game/SocketIOGameController";
import { SocketIOEvents } from "enums/SocketIOEvents";

export class SocketIOInitializer {
  private _io: Server;

  constructor(ctx: ApiContext) {
    this._io = ctx.io;

    this._io.on(SocketIOEvents.CONNECTION, (socket: Socket) => {
      this._initializeControllers(socket, ctx);
    });
  }

  private _initializeControllers(socket: Socket, ctx: ApiContext) {
    const socketContext = { socket, apiContext: ctx };

    new SocketIOGameController(socketContext);
  }
}
