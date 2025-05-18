import { GameStateDTO } from "domain/types/dto/game/state/GameStateDTO";

export interface GameNextRoundEventPayload {
  gameState: GameStateDTO;
}
