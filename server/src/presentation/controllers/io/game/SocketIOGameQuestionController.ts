import { Namespace, Socket } from "socket.io";

import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import { Game } from "domain/entities/game/Game";
import { GameStateTimer } from "domain/entities/game/GameStateTimer";
import { SocketIOGameEvents } from "domain/enums/SocketIOEvents";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import { GameQuestionDataEventPayload } from "domain/types/socket/events/game/GameQuestionDataEventPayload";
import { GameValidator } from "domain/validators/GameValidator";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { SocketIOEventEmitter } from "presentation/emitters/SocketIOEventEmitter";

export class SocketIOGameQuestionController {
  constructor(
    private readonly socket: Socket,
    private readonly nsp: Namespace,
    private readonly eventEmitter: SocketIOEventEmitter,
    private readonly socketIOQuestionService: SocketIOQuestionService
  ) {
    this.socket.on(
      SocketIOGameEvents.QUESTION_PICK,
      SocketWrapper.catchErrors(this.eventEmitter, this.handleQuestionPick)
    );
    this.socket.on(
      SocketIOGameEvents.QUESTION_ANSWER,
      SocketWrapper.catchErrors(this.eventEmitter, this.handleQuestionAnswer)
    );
  }

  private handleQuestionPick = async (data: any) => {
    const dto = await GameValidator.validatePickQuestion(data);

    const { question, game, timer } =
      await this.socketIOQuestionService.handleQuestionPick(
        this.socket.id,
        dto.questionId
      );

    await this._broadcastQuestion(game, question, timer);
  };

  private handleQuestionAnswer = async () => {
    const { userId, gameId, timer } =
      await this.socketIOQuestionService.handleQuestionAnswer(this.socket.id);

    this.eventEmitter.emit(
      SocketIOGameEvents.QUESTION_ANSWER,
      {
        userId,
        timer: timer.value(),
      },
      { emitter: SocketEventEmitter.IO, gameId }
    );
  };

  private _broadcastQuestion = async (
    game: Game,
    question: PackageQuestionDTO,
    timer: GameStateTimer
  ) => {
    const sockets = await this.nsp.in(game.id).fetchSockets();
    const map = await this.socketIOQuestionService.getPlayersBroadcastMap(
      sockets.map((socket) => socket.id),
      game,
      question
    );

    for (const [socketId, questionData] of map) {
      this.eventEmitter.emitToSocket<GameQuestionDataEventPayload>(
        SocketIOGameEvents.QUESTION_DATA,
        { data: questionData, timer: timer.value() },
        socketId
      );
    }
  };
}
