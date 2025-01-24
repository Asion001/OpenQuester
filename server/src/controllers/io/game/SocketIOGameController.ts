import { Socket } from "socket.io";
import { ISocketContext } from "types/context/ISocketContext";

export class SocketIOGameController {
  constructor(private ctx: ISocketContext) {
    // TODO: Implement game-join, game-leave, game-change in future
  }

  private get _socket(): Socket {
    return this.ctx.socket;
  }
}
