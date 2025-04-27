import { GameStateRoundDTO } from "domain/types/dto/game/state/GameStateRoundDTO";

export interface GameStartEventPayload {
  currentRound: GameStateRoundDTO;
}
