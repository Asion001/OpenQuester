import { EAgeRestriction } from "enums/game/EAgeRestriction";
import { IShortUserInfo } from "types/user/IShortUserInfo";

interface IPackageItem {
  id: number;
  title: string;
  ageRestriction: EAgeRestriction;
  createdAt: Date;
  rounds: number;
  author: IShortUserInfo;
}

export interface IGameListItem {
  id: string;
  createdBy: IShortUserInfo;
  title: string;
  createdAt: Date;
  currentRound: number;
  players: number;
  maxPlayers: number;
  startedAt?: Date;
  package: IPackageItem;
}
