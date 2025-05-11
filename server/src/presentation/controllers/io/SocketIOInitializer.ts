import { Server as IOServer, Namespace, Socket } from "socket.io";

import { SocketIOChatService } from "application/services/socket/SocketIOChatService";
import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import { SOCKET_GAME_NAMESPACE } from "domain/constants/socket";
import { SocketIOGameController } from "presentation/controllers/io/game/SocketIOGameController";
import { SocketIOGameQuestionController } from "presentation/controllers/io/game/SocketIOGameQuestionController";
import { SocketIOEventEmitter } from "presentation/emitters/SocketIOEventEmitter";

export class SocketIOInitializer {
  constructor(
    private readonly io: IOServer,
    private readonly socketIOGameService: SocketIOGameService,
    private readonly socketIOChatService: SocketIOChatService,
    private readonly socketIOQuestionService: SocketIOQuestionService
  ) {
    const gameNamespace = this.io.of(SOCKET_GAME_NAMESPACE);

    gameNamespace.on("connection", (socket: Socket) => {
      this._initializeGameControllers(gameNamespace, socket);
    });
  }

  private _initializeGameControllers(nsp: Namespace, socket: Socket) {
    const eventEmitter = new SocketIOEventEmitter();
    eventEmitter.init(nsp, socket);

    new SocketIOGameController(
      socket,
      eventEmitter,
      this.socketIOGameService,
      this.socketIOChatService
    );

    new SocketIOGameQuestionController(
      socket,
      nsp,
      eventEmitter,
      this.socketIOQuestionService
    );
  }
}
