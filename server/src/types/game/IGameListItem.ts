import { EAgeRestriction } from "enums/game/EAgeRestriction";

interface IPackageItem {
  id: number;
  title: string;
  ageRestriction: EAgeRestriction;
  createdAt: Date;
  rounds: number;
  author: {
    id: number;
    name: string;
  };
}

export interface IGameListItem {
  id: string;
  createdBy: number;
  title: string;
  createdAt: Date;
  currentRound: number;
  players: number;
  maxPlayers: number;
  startedAt?: Date;
  package: IPackageItem;
}
