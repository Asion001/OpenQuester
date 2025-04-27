import { GameStateThemeDTO } from "./GameStateThemeDTO";

export interface GameStateRoundDTO {
  order: number;
  name: string;
  description: string | null;
  themes: GameStateThemeDTO[];
}
