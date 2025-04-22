import { PlayerRole } from "domain/types/game/PlayerRole";

export interface GameJoinData {
  gameId: string;
  role: PlayerRole;
}
