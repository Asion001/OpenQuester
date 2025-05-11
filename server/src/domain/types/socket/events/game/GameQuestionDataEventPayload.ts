import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { SimplePackageQuestionDTO } from "domain/types/dto/package/SimplePackageQuestionDTO";

export interface GameQuestionDataEventPayload {
  data: PackageQuestionDTO | SimplePackageQuestionDTO;
  timer: GameStateTimerDTO;
}
