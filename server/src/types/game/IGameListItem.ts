import { IShortUserInfo } from "types/user/IShortUserInfo";
import { IPackageListItem } from "types/game/items/IPackageIListItem";
import { EAgeRestriction } from "enums/game/EAgeRestriction";

export interface IGameListItem {
  id: string;
  createdBy: IShortUserInfo;
  title: string;
  createdAt: Date;
  currentRound: number;
  isPrivate: boolean;
  ageRestriction: EAgeRestriction;
  players: number;
  maxPlayers: number;
  startedAt: Date | null;
  package: IPackageListItem;
}
