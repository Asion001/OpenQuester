import { Socket } from "socket.io";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { ServerServices } from "services/ServerServices";
import { ISocketContext } from "types/context/ISocketContext";

export class SocketIOGameListController {
  constructor(private ctx: ISocketContext) {
    this._socket.on(SocketIOEvents.LIST_GAMES, () => {
      this.listGames();
    });
  }

  private async listGames() {
    const games = await ServerServices.game.list();
    this._socket.emit(SocketIOEvents.LIST_GAMES, games);
  }

  private get _socket(): Socket {
    return this.ctx.socket;
  }
}
