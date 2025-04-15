import { PlayerRole } from "domain/types/game/PlayerRole";

export interface PlayerJoinEventPayload {
  userId: number;
  username: string;
  avatar: string | null; // avatar file link
  role: PlayerRole;
  restrictions: {
    muted: boolean;
    restricted: boolean;
  };
  balance: number;
  slot: number | null; // 0-based slot index, slot used only if role is "player"
}
