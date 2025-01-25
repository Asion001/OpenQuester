import { IPackageListItem } from "types/game/items/IPackageIListItem";

type pickFields =
  | "id"
  | "title"
  | "ageRestriction"
  | "createdAt"
  | "rounds"
  | "tags";

export interface IPackageItem extends Pick<IPackageListItem, pickFields> {
  author: number;
}
