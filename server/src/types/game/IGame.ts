import { IPackageItem } from "types/game/items/IPackageItem";
import { IGameListItem } from "types/game/IGameListItem";

type pickFields =
  | "id"
  | "title"
  | "createdAt"
  | "currentRound"
  | "players"
  | "maxPlayers"
  | "startedAt";

export interface IGame extends Pick<IGameListItem, pickFields> {
  createdBy: number;
  package: IPackageItem;
}
