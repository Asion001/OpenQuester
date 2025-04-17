import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";

export interface PlayerDTO {
  user: UserDTO;
  slot: number | null;
  role: PlayerRole;
  status: PlayerGameStatus;
  restrictionData: {
    muted: boolean;
    restricted: boolean;
    banned: boolean;
  };
  score: number;
}
