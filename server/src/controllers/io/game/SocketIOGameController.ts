import { Socket } from "socket.io";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { ServerServices } from "services/ServerServices";
import { ISocketContext } from "types/context/ISocketContext";
import { IGameCreateData } from "types/game/IGameCreate";
import { Logger } from "utils/Logger";

export class SocketIOGameController {
  constructor(private ctx: ISocketContext) {
    this._socket.on(SocketIOEvents.GAMES, () => {
      this.listGames();
    });

    this._socket.on(SocketIOEvents.GAME_INFO, (data) => {
      this.getGameInfo(data);
    });

    this._socket.on(SocketIOEvents.GAME_CREATE, (data: IGameCreateData) => {
      this.createGame(data, this._socket.handshake.headers.authorization);
    });

    this._socket.on(SocketIOEvents.MESSAGE, () => {
      this._socket.emit(
        SocketIOEvents.MESSAGE,
        "Hello from SocketIOGameListController"
      );
    });
  }

  private async getGameInfo(data: { gameId: string }) {
    const gameInfo = await ServerServices.game.get(data.gameId);
    this._socket.emit(SocketIOEvents.GAMES, gameInfo);
  }

  private async listGames() {
    const games = await ServerServices.game.list();
    this._socket.emit(SocketIOEvents.GAMES, games);
  }

  private async createGame(
    data: IGameCreateData,
    authToken: string | undefined
  ) {
    Logger.debug(data);
    Logger.debug(authToken);
    // TODO: Implement (data and authToken getting works fine)
  }

  private get _socket(): Socket {
    return this.ctx.socket;
  }
}
