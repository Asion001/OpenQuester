import { Server as IOServer, Namespace } from "socket.io";

import { GameService } from "application/services/game/GameService";
import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import { GAME_TTL } from "domain/constants/game";
import { REDIS_LOCK_EXPIRATION_KEY } from "domain/constants/redis";
import { SOCKET_GAME_NAMESPACE } from "domain/constants/socket";
import { TIMER_NSP } from "domain/constants/timer";
import { Game } from "domain/entities/game/Game";
import { SocketIOGameEvents } from "domain/enums/SocketIOEvents";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
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
    // const sockets = await this._gameNamespace.in(gameId).fetchSockets();
    const game = await this.gameService.getGameEntity(gameId, GAME_TTL);
    const question = await this.socketIOQuestionService.getQuestion(game);

    if (game.gameState.questionState === QuestionState.SHOWING) {
      game.gameState.currentQuestion = null;
      game.gameState.timer = null;
      await this._updateQuestionState(game);
      await this.gameService.updateGame(game);
      this._gameNamespace.to(game.id).emit(SocketIOGameEvents.QUESTION_FINISH, {
        data: {
          answerFiles: question.answerFiles,
          answerText: question.answerText,
        },
      });
      return;
    }

    // const socketMap =
    //   await this.socketIOQuestionService.handlePlayersBroadcastMap(
    //     sockets.map((socket) => socket.id),
    //     game,
    //     question
    //   );

    // const timer = new GameStateTimer(GAME_QUESTION_ANSWER_TIME);
    // timer.start();

    // for (const [socketId, questionData] of socketMap) {
    //   if (game.gameState.questionState === QuestionState.PREPARE) {
    //     this._gameNamespace
    //       .to(socketId)
    //       .emit(SocketIOGameEvents.QUESTION_DATA, {
    //         data: questionData,
    //         timer: timer.value(),
    //       });
    //   }
    // }

    // await this._updateQuestionState(game);
  }

  private _getNextQuestionState(current: QuestionState): QuestionState | null {
    switch (current) {
      case QuestionState.PREPARE:
        return QuestionState.SHOWING;
      case QuestionState.SHOWING:
        return QuestionState.CHOOSING;
      default:
        return null;
    }
  }

  private async _updateQuestionState(game: Game) {
    const nextState = this._getNextQuestionState(game.gameState.questionState!);

    await this.socketIOQuestionService.updateQuestionState(game, nextState!, {
      withSave: false,
    });
  }

  private get _gameNamespace() {
    if (!this._gameNsp) {
      this._gameNsp = this.io.of(SOCKET_GAME_NAMESPACE);
    }

    return this._gameNsp;
  }
}
