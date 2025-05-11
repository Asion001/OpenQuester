import { GameStateQuestionDTO } from "domain/types/dto/game/state/GameStateQuestionDTO";

export interface GameStateThemeDTO {
  id: number;
  order: number;
  name: string;
  description: string | null;
  questions: GameStateQuestionDTO[];
}
