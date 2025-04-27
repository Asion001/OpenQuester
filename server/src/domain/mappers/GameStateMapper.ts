import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { GameStateDTO } from "domain/types/dto/game/state/GameStateDTO";
import { GameStateQuestionDTO } from "domain/types/dto/game/state/GameStateQuestionDTO";
import { GameStateRoundDTO } from "domain/types/dto/game/state/GameStateRoundDTO";
import { GameStateThemeDTO } from "domain/types/dto/game/state/GameStateThemeDTO";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PackageRoundDTO } from "domain/types/dto/package/PackageRoundDTO";
import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";

export class GameStateMapper {
  public static initGameState(): GameStateDTO {
    return {
      currentRound: null,
      answeredPlayers: null,
      answeringPlayer: null,
      isPaused: false,
      currentQuestion: null,
      questionState: null,
      timer: null,
    };
  }

  public static getGameRound(
    pack: PackageDTO,
    order: number
  ): GameStateRoundDTO {
    const round = pack.rounds.find((round) => round.order === order);

    if (!round) {
      throw new ClientError(ClientResponse.BAD_ROUND_RETRIEVAL);
    }

    return {
      name: round.name,
      description: round.description ?? null,
      order: round.order,
      themes: this.getRoundThemes(round),
    };
  }

  public static getRoundThemes(round: PackageRoundDTO): GameStateThemeDTO[] {
    return round.themes.map((theme): GameStateThemeDTO => {
      return {
        name: theme.name,
        description: theme.description ?? null,
        order: theme.order,
        questions: this.getThemeQuestions(theme),
      };
    });
  }

  public static getThemeQuestions(
    theme: PackageThemeDTO
  ): GameStateQuestionDTO[] {
    return theme.questions.map((question): GameStateQuestionDTO => {
      return {
        order: question.order,
        price: question.isHidden ? null : question.price,
        questionComment: question.questionComment ?? null,
      };
    });
  }
}
