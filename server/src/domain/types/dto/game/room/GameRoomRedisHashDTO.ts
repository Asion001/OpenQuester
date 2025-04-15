export interface GameRoomRedisHashDTO {
  players: string; // Array of players
  scores: string; // Mapped playerId:score
  slots: string; // Array of slots
  gameId: string;
}
