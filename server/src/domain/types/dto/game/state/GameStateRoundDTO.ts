import { GameStateThemeDTO } from "domain/types/dto/game/state/GameStateThemeDTO";

export interface GameStateRoundDTO {
  id: number;
  order: number;
  name: string;
  description: string | null;
  themes: GameStateThemeDTO[];
}
