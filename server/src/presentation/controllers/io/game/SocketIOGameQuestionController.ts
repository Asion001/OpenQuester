import { Namespace, Socket } from "socket.io";

import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import { GAME_QUESTION_ANSWER_TIME } from "domain/constants/game";
import { Game } from "domain/entities/game/Game";
import { GameStateTimer } from "domain/entities/game/GameStateTimer";
import { SocketIOGameEvents } from "domain/enums/SocketIOEvents";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import {
  GameQuestionDataEventPayload,
  GameQuestionPrepareEventPayload,
} from "domain/types/socket/events/game/GameQuestionDataEventPayload";
import { GameValidator } from "domain/validators/GameValidator";
import { SocketWrapper } from "infrastructure/socket/SocketWrapper";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

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
      SocketIOGameEvents.QUESTION_READY,
      SocketWrapper.catchErrors(this.eventEmitter, this.handleQuestionReady)
    );
  }

  private handleQuestionPick = async (data: any) => {
    const dto = await GameValidator.validatePickQuestion(data);

    const { question, game, timer } =
      await this.socketIOQuestionService.handleQuestionPick(
        this.socket.id,
        dto.questionId
      );

    // Send file to allow players download question first
    if (game.gameState.questionState === QuestionState.PREPARE) {
      return this.eventEmitter.emit<GameQuestionPrepareEventPayload>(
        SocketIOGameEvents.QUESTION_PREPARE,
        {
          questionFiles: question.questionFiles ?? [],
          timer: timer.value(),
        },
        {
          emitter: SocketEventEmitter.IO,
          gameId: game.id,
        }
      );
    }

    // Question does not contain files - we can send question immediately
    await this._broadcastQuestion(game, question, timer);
  };

  private handleQuestionReady = async () => {
    const data = await this.socketIOQuestionService.handleQuestionReady(
      this.socket.id
    );

    // Player is not playing - don't take him into consideration
    if (!data) {
      return;
    }

    const { game, player } = data;

    this.eventEmitter.emit(
      SocketIOGameEvents.QUESTION_PLAYER_READY,
      {
        playerId: player.meta.id,
      },
      {
        emitter: SocketEventEmitter.IO,
        gameId: game.id,
      }
    );

    if (game.isEveryoneReady()) {
      const question = await this.socketIOQuestionService.getQuestion(game);
      await this._broadcastQuestion(
        game,
        question,
        // TODO: Create service method to create timer key in redis (and then handle it's expiration)
        new GameStateTimer(GAME_QUESTION_ANSWER_TIME)
      );
    }
  };

  private _broadcastQuestion = async (
    game: Game,
    question: PackageQuestionDTO,
    timer: GameStateTimer
  ) => {
    const sockets = await this.nsp.in(game.id).fetchSockets();
    const map = await this.socketIOQuestionService.handlePlayersBroadcastMap(
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
