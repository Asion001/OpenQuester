import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";

export interface QuestionAnswerEventPayload {
  userId: number;
  timer: GameStateTimerDTO;
}
