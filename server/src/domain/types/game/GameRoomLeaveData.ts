export interface GameRoomLeaveData {
  /** Emit leave event to lobby if true */
  emit: boolean;
  /** Data for event emit */
  data?: {
    userId: number;
    gameId: string;
  };
}
