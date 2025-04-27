import { GameStateQuestionDTO } from "./GameStateQuestionDTO";

export interface GameStateThemeDTO {
  order: number;
  name: string;
  description: string | null;
  questions: GameStateQuestionDTO[];
}
