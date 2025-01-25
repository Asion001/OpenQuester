enum EUserRole {
  PLAYER = "player",
  SHOWMAN = "showman",
  SPECTATOR = "spectator",
}

interface Player {
  userId: number;
  score: number;
  role: EUserRole;
  connected: boolean;
}

export interface IGameState {
  id: string;
  createdBy: number;
  title: string;
  createdAt: Date;
  currentRound: number;
  players: Player[];
  maxPlayers: number;
  packageId: number;
  lastAnsweredUserId: number | null;
  startedAt: Date | null;
}
