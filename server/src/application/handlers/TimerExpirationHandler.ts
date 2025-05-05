import { Server as IOServer, Namespace } from "socket.io";

import { GameService } from "application/services/game/GameService";
import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import { GAME_TTL } from "domain/constants/game";
import { REDIS_LOCK_EXPIRATION_KEY } from "domain/constants/redis";
import { SOCKET_GAME_NAMESPACE } from "domain/constants/socket";
import { TIMER_NSP } from "domain/constants/timer";
import { Game } from "domain/entities/game/Game";
import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { ErrorController } from "domain/errors/ErrorController";
import { AnswerOptions } from "domain/types/dto/game/AnswerOptions";
import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { RedisExpirationHandler } from "domain/types/redis/RedisExpirationHandler";
import { RedisService } from "infrastructure/services/redis/RedisService";

export class TimerExpirationHandler implements RedisExpirationHandler {
  private _gameNsp?: Namespace;

  constructor(
    private readonly io: IOServer,
    private readonly gameService: GameService,
    private readonly socketIOQuestionService: SocketIOQuestionService,
    private readonly redisService: RedisService
  ) {
    //
  }

  public supports(key: string): boolean {
    return key.startsWith(`${TIMER_NSP}:`);
  }

  public async handle(key: string): Promise<void> {
    const lockKey = `${REDIS_LOCK_EXPIRATION_KEY}:${key}`;
    const acquired = await this.redisService.setLockKey(lockKey);

    if (!acquired) {
      return; // Another instance acquired the lock
    }

    const gameId = key.split(":")[1];

    try {
      const game = await this.gameService.getGameEntity(gameId, GAME_TTL);
      const question = await this.socketIOQuestionService.getQuestion(game);

      if (game.gameState.questionState === QuestionState.SHOWING) {
        game.resetToChoosingState();
        await this.gameService.updateGame(game);

        this._gameNamespace
          .to(gameId)
          .emit(SocketIOGameEvents.QUESTION_FINISH, {
            data: {
              answerFiles: question.answerFiles,
              answerText: question.answerText,
            },
          });
        return;
      }

      if (game.gameState.questionState === QuestionState.ANSWERING) {
        const { answerResult, timer } = await this._handleAnsweringExpiration(
          game,
          question
        );

        this._gameNamespace
          .to(gameId)
          .emit(SocketIOGameEvents.ANSWER_SUBMITTED, {
            answer: answerResult,
            timer,
          });
        return;
      }
    } catch (err: unknown) {
      const error = await ErrorController.resolveError(err);
      this._gameNamespace.to(gameId).emit(SocketIOEvents.ERROR, {
        message: error.message,
      });
    }
  }

  private async _handleAnsweringExpiration(
    game: Game,
    question: PackageQuestionDTO
  ) {
    // On time expiration we always accept answer as wrong with x1 score value
    const isCorrect = false;

    const nextState = this._getNextQuestionState(
      game.gameState.questionState!,
      {
        isCorrect,
      }
    );

    const answerResult = game.handleQuestionAnswer(question, nextState, {
      isCorrect,
    });

    let timer: GameStateTimerDTO | null = null;

    if (nextState === QuestionState.SHOWING) {
      timer = (await this.gameService.getTimer(
        game.id,
        QuestionState.SHOWING
      )) as GameStateTimerDTO | null;
    }

    game.setTimer(timer);
    await this.gameService.updateGame(game);

    return { answerResult, timer };
  }

  /**
   * Next question state for time expiration event
   */
  private _getNextQuestionState(
    currentState: QuestionState,
    opts?: AnswerOptions
  ): QuestionState {
    switch (currentState) {
      case QuestionState.SHOWING:
        return QuestionState.CHOOSING;
      case QuestionState.ANSWERING:
        if (!opts) {
          return QuestionState.SHOWING;
        }
        return opts.isCorrect ? QuestionState.CHOOSING : QuestionState.SHOWING;
      default:
        return QuestionState.SHOWING;
    }
  }

  private get _gameNamespace() {
    if (!this._gameNsp) {
      this._gameNsp = this.io.of(SOCKET_GAME_NAMESPACE);
    }

    return this._gameNsp;
  }
}
