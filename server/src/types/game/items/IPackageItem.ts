import { IPackageListItem } from "types/game/items/IPackageIListItem";

type pickFields = "id" | "title" | "ageRestriction" | "createdAt" | "rounds";

export interface IPackageItem extends Pick<IPackageListItem, pickFields> {
  author: number;
}
