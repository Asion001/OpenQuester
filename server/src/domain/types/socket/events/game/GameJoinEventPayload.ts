import { Player } from "domain/entities/game/Player";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";

export interface GameJoinEventPayload {
  players: Player[];
  gameState: GameListItemDTO; // TODO: Change to game state later
}
