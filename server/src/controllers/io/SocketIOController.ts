import { Server, Socket } from "socket.io";
import { Logger } from "utils/Logger";
import { ApiContext } from "services/context/ApiContext";
import { SocketIOEvents } from "enums/SocketIOEvents";

const IO_PREFIX = "[IO]: ";

export class SocketIOController {
  private _io: Server;

  constructor(ctx: ApiContext) {
    Logger.info("Initializing Socket.IO controller", IO_PREFIX);
    this._io = ctx.io;

    // Basic connection test
    this._io.on(SocketIOEvents.CONNECTION, (socket) => {
      this._connectionHandler(socket);
    });
  }

  private _connectionHandler = async (socket: Socket) => {
    socket.on(SocketIOEvents.MESSAGE, (data) => {
      Logger.gray(`Received message from ${socket.id}: ${data}`, IO_PREFIX);
      socket.emit("response", `Received: ${data}`);
    });

    socket.on(SocketIOEvents.DISCONNECT, () => {
      Logger.warn(`Client disconnected: ${socket.id}`, IO_PREFIX);
    });
  };
}
