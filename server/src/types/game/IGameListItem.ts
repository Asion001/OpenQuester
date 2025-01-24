import { IShortUserInfo } from "types/user/IShortUserInfo";
import { IPackageListItem } from "types/game/items/IPackageIListItem";

export interface IGameListItem {
  id: string;
  createdBy: IShortUserInfo;
  title: string;
  createdAt: Date;
  currentRound: number;
  players: number;
  maxPlayers: number;
  startedAt?: Date;
  package: IPackageListItem;
}
