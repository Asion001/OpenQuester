import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { GameStateDTO } from "domain/types/dto/game/state/GameStateDTO";

export interface GameJoinEventPayload {
  players: PlayerDTO[];
  gameState: GameStateDTO;
}
