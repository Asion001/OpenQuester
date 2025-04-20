import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";

export interface GameJoinEventPayload {
  players: PlayerDTO[];
  gameState: GameListItemDTO; // TODO: Change to game state later
}
