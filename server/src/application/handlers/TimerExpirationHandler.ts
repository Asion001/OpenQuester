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
      const question = await this.socketIOQuestionService.getCurrentQuestion(
        game
      );

      if (game.gameState.questionState === QuestionState.SHOWING) {
        game.resetToChoosingState();
        await this.gameService.updateGame(game);

        this._gameNamespace
          .to(gameId)
          .emit(SocketIOGameEvents.QUESTION_FINISH, {
            answerFiles: question.answerFiles ?? null,
            answerText: question.answerText ?? null,
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
    const nextState = QuestionState.SHOWING;

    const playerAnswerResult = game.handleQuestionAnswer(
      -question.price,
      nextState
    );

    const timer = await this.gameService.getTimer(
      game.id,
      QuestionState.SHOWING
    );

    game.setTimer(timer);
    await this.gameService.updateGame(game);

    return { answerResult: playerAnswerResult, timer };
  }

  private get _gameNamespace() {
    if (!this._gameNsp) {
      this._gameNsp = this.io.of(SOCKET_GAME_NAMESPACE);
    }

    return this._gameNsp;
  }
}
