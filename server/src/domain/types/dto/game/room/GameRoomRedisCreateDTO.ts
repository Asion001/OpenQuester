import { Player } from "domain/entities/game/Player";

export interface GameRoomRedisHashDTO {
  players: Player[];
  scores: Map<number, number>; // Mapped playerId:score
  slots: (number | null)[];
  gameId: string;
}
