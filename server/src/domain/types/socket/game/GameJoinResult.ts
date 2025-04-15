import { Game } from "domain/entities/game/Game";
import { Player } from "domain/entities/game/Player";

export interface GameJoinResult {
  game: Game;
  player: Player;
}
