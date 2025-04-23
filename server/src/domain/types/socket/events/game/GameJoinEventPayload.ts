import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";

export interface GameJoinEventPayload {
  players: PlayerDTO[];
  gameState: PackageDTO; // TODO: Change to game state later
}
