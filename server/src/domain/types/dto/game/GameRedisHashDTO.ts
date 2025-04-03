export interface GameRedisHashDTO {
  id: string;
  createdBy: string;
  title: string;
  createdAt: string; // Stored as timestamp string
  isPrivate: string; // '0' | '1'
  ageRestriction: string;
  currentRound: string;
  players: string;
  maxPlayers: string;
  startedAt: string; // Empty string if null
  package: string;
  roundsCount: number;
  questionsCount: number;
}
