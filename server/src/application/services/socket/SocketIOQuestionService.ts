import { GameService } from "application/services/game/GameService";
import {
  GAME_QUESTION_ANSWER_TIME,
  GAME_QUESTION_FILE_DOWNLOAD_TIME,
  GAME_TTL,
} from "domain/constants/game";
import { Game } from "domain/entities/game/Game";
import { GameStateTimer } from "domain/entities/game/GameStateTimer";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameQuestionMapper } from "domain/mappers/GameQuestionMapper";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { SimplePackageQuestionDTO } from "domain/types/dto/package/SimplePackageQuestionDTO";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { SocketUserDataService } from "infrastructure/services/socket/SocketUserDataService";

export class SocketIOQuestionService {
  constructor(
    private readonly socketUserDataService: SocketUserDataService,
    private readonly gameService: GameService
  ) {
    //
  }

  public async handleQuestionPick(socketId: string, questionId: number) {
    const { game, player } = await this._fetchPlayerAndGame(socketId);

    if (
      player?.role !== PlayerRole.PLAYER &&
      player?.role !== PlayerRole.SHOWMAN
    ) {
      throw new ClientError(ClientResponse.YOU_CANNOT_PICK_QUESTION);
    }

    if (game.gameState.currentQuestion) {
      throw new ClientError(ClientResponse.QUESTION_ALREADY_PICKED);
    }

    const currentRound = game.gameState.currentRound;

    if (!currentRound) {
      throw new ClientError(ClientResponse.GAME_NOT_STARTED);
    }

    const questionData = GameQuestionMapper.getQuestionAndTheme(
      game.package,
      currentRound.id,
      questionId
    );

    if (!questionData) {
      throw new ClientError(ClientResponse.QUESTION_NOT_FOUND);
    }

    const { question, theme } = questionData;

    let timer: GameStateTimer;

    // TODO: Create service method to create timer key in redis (and then handle it's expiration)
    // If question has files to download - let everyone download first
    if (question.questionFiles && question.questionFiles.length > 0) {
      timer = new GameStateTimer(GAME_QUESTION_FILE_DOWNLOAD_TIME);
      game.gameState.questionState = QuestionState.PREPARE;
    } else {
      timer = new GameStateTimer(GAME_QUESTION_ANSWER_TIME);
      game.gameState.questionState = QuestionState.SHOWING;
    }

    game.gameState.currentQuestion = questionId;
    game.gameState.timer = timer.start();
    GameQuestionMapper.setQuestionPlayed(game, question.id!, theme.id!);

    await this.gameService.updateGame(game);

    return { question, game, timer };
  }

  public async getQuestion(game: Game) {
    const gameState = game.gameState;

    if (!gameState.currentRound) {
      throw new ClientError(ClientResponse.GAME_NOT_STARTED);
    }

    if (!gameState.currentQuestion) {
      throw new ClientError(ClientResponse.QUESTION_NOT_FOUND);
    }

    const questionData = GameQuestionMapper.getQuestionAndTheme(
      game.package,
      gameState.currentRound.id,
      gameState.currentQuestion
    );

    if (!questionData) {
      throw new ClientError(ClientResponse.QUESTION_NOT_FOUND);
    }

    const { question } = questionData;

    return question;
  }

  public async handlePlayersBroadcastMap(
    socketsIds: string[],
    game: Game,
    question: PackageQuestionDTO
  ) {
    const fullQuestionPayload = question;
    const simpleQuestionPayload =
      GameQuestionMapper.mapToSimpleQuestion(question);

    const resultMap: Map<
      string,
      PackageQuestionDTO | SimplePackageQuestionDTO
    > = new Map();

    for (const socketId of socketsIds) {
      const userData = await this._fetchUserSocketData(socketId);

      const player = game.getPlayer(userData.id, { fetchDisconnected: false });

      if (player?.role === PlayerRole.SHOWMAN) {
        resultMap.set(socketId, fullQuestionPayload);
      } else {
        resultMap.set(socketId, simpleQuestionPayload);
      }
    }

    return resultMap;
  }

  public async handleQuestionReady(socketId: string) {
    const { game, player } = await this._fetchPlayerAndGame(socketId);

    if (
      !player ||
      player.role === PlayerRole.SPECTATOR ||
      player.role === PlayerRole.SHOWMAN
    ) {
      return;
    }

    let readyPlayers = game.gameState.readyPlayers;

    if (!readyPlayers?.length) {
      readyPlayers = [player.meta.id];
    } else if (readyPlayers.includes(player.meta.id)) {
      return;
    } else {
      readyPlayers.push(player.meta.id);
    }

    game.readyPlayers = readyPlayers;
    await this.gameService.updateGame(game);

    return { game, player };
  }

  private async _fetchUserSocketData(socketId: string) {
    const userData = await this.socketUserDataService.getSocketData(socketId);

    if (!userData) {
      throw new ClientError(ClientResponse.SOCKET_USER_NOT_AUTHENTICATED);
    }

    return userData;
  }

  private async _fetchPlayerAndGame(socketId: string) {
    const user = await this._fetchUserSocketData(socketId);

    if (!user.gameId) {
      throw new ClientError(
        ClientResponse.GAME_NOT_FOUND,
        HttpStatus.NOT_FOUND
      );
    }

    const game = await this.gameService.getGameEntity(user.gameId, GAME_TTL);
    const player = game.getPlayer(user.id, { fetchDisconnected: false });

    return { game, player };
  }
}
