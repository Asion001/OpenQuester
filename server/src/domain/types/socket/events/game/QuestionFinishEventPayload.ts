import { GameStateAnsweredPlayerData } from "domain/types/dto/game/state/GameStateDTO";
import { PackageAnswerFileDTO } from "domain/types/dto/package/PackageAnswerFileDTO";

export interface QuestionFinishEventPayload {
  answerFiles: PackageAnswerFileDTO[] | null;
  answerText: string | null;
}

export interface QuestionFinishWithAnswerEventPayload
  extends Pick<QuestionFinishEventPayload, "answerFiles" | "answerText"> {
  answerResult: GameStateAnsweredPlayerData;
}
