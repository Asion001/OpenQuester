import { Game } from "domain/entities/game/Game";

/**
 * This interface
 */
export interface GameRoomLeaveData {
  /** Emit leave event to room if true */
  emit: boolean;
  /** Data for event emit */
  data?: {
    game: Game;
  };
}
