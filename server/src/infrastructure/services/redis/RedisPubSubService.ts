import { Server as IOServer } from "socket.io";

import { GameService } from "application/services/game/GameService";
import { SocketIOQuestionService } from "application/services/socket/SocketIOQuestionService";
import {
  GAME_NAMESPACE,
  GAME_QUESTION_ANSWER_TIME,
  GAME_TTL,
} from "domain/constants/game";
import {
  REDIS_KEY_EXPIRE_EVENT,
  REDIS_LOCK_EXPIRATION_KEY,
} from "domain/constants/redis";
import { SOCKET_GAME_NAMESPACE } from "domain/constants/socket";
import { TIMER_NSP } from "domain/constants/timer";
import { Game } from "domain/entities/game/Game";
import { GameStateTimer } from "domain/entities/game/GameStateTimer";
import { SocketIOGameEvents } from "domain/enums/SocketIOEvents";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
import { PackageQuestionAnswerDTO } from "domain/types/dto/package/PackageQuestionAnswerDTO";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { RedisService } from "infrastructure/services/redis/RedisService";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class RedisPubSubService {
  constructor(
    private readonly io: IOServer,
    private readonly redisService: RedisService,
    private readonly gameIndexManager: GameIndexManager,
    private readonly gameService: GameService,
    private readonly socketIOQuestionService: SocketIOQuestionService
  ) {
    //
  }

  public async initKeyExpirationHandling() {
    await this.redisService.subscribe(REDIS_KEY_EXPIRE_EVENT);

    this.redisService.on(
      "message",
      async (channel: string, message: string) => {
        if (!ValueUtils.isString(message)) {
          return;
        }

        // TODO: No need to delete, it will be handled correctly when logging system will improve
        Logger.debug(`Key expired: ${message}`);

        if (message.startsWith(`${GAME_NAMESPACE}:`)) {
          await this._handleGameExpiration(message);
        }

        if (message.startsWith(`${TIMER_NSP}:`)) {
          await this._handleTimerExpiration(message);
        }
      }
    );
    Logger.info("Redis subscribed for keys expiration");
  }

  private async _handleGameExpiration(message: string) {
    const lockKey = this._getLockKey(message);
    const acquired = await this.redisService.setLockKey(lockKey);

    if (!acquired) {
      return; // Another instance acquired the lock
    }

    const [, gameId] = message.split(":");
    await this.gameIndexManager.removeGameFromAllIndexes(gameId);
  }

  private async _handleTimerExpiration(message: string) {
    const gameId = message.split(":")[1];
    const gamesNamespace = this.io.of(SOCKET_GAME_NAMESPACE);

    const game = await this.gameService.getGameEntity(gameId, GAME_TTL);
    const sockets = await gamesNamespace.in(gameId).fetchSockets();
    const question = await this.socketIOQuestionService.getQuestion(game);

    // TODO: Refactor to handlers that is injected here, create GameProgressionService that handles next game stage
    if (game.gameState.questionState === QuestionState.SHOWING) {
      const answerData: PackageQuestionAnswerDTO = {
        answerFiles: question.answerFiles,
        answerText: question.answerText,
      };

      gamesNamespace.to(game.id).emit(SocketIOGameEvents.QUESTION_FINISH, {
        data: answerData,
      });
      return;
    }

    const map = await this.socketIOQuestionService.handlePlayersBroadcastMap(
      sockets.map((socket) => socket.id),
      game,
      question
    );

    const timer = new GameStateTimer(GAME_QUESTION_ANSWER_TIME);

    timer.start();

    for (const [socketId, questionData] of map) {
      if (game.gameState.questionState === QuestionState.PREPARE) {
        gamesNamespace.to(socketId).emit(SocketIOGameEvents.QUESTION_DATA, {
          data: questionData,
          timer: timer.value(),
        });
      }
    }

    await this._updateQuestionState(game);
  }

  private async _updateQuestionState(game: Game) {
    switch (game.gameState.questionState) {
      case QuestionState.PREPARE:
        await this.socketIOQuestionService.updateQuestionState(
          game,
          QuestionState.SHOWING,
          { withSave: true }
        );
        break;
      case QuestionState.SHOWING:
        await this.socketIOQuestionService.updateQuestionState(
          game,
          QuestionState.FINISHED,
          { withSave: true }
        );
        break;
    }
  }

  private _getLockKey(value: string) {
    return `${REDIS_LOCK_EXPIRATION_KEY}:${value}`;
  }
}
