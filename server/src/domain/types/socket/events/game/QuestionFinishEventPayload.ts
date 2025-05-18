import { GameStateAnsweredPlayerData } from "domain/types/dto/game/state/GameStateDTO";
import { PackageAnswerFileDTO } from "domain/types/dto/package/PackageAnswerFileDTO";

export interface QuestionFinishEventPayload {
  answerResult: GameStateAnsweredPlayerData;
  answerFiles: PackageAnswerFileDTO[] | null;
  answerText: string | null;
}
