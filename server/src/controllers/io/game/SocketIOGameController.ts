import { Socket } from "socket.io";
import { SocketContextDTO } from "types/context/SocketContextDTO";

export class SocketIOGameController {
  constructor(private readonly ctx: SocketContextDTO) {
    // TODO: Implement game-join, game-leave, game-change in future
  }

  private get _socket(): Socket {
    return this.ctx.socket;
  }
}
