import { PackageListItemDTO } from "domain/types/dto/game/items/PackageIListItemDTO";

type pickFields =
  | "id"
  | "title"
  | "ageRestriction"
  | "createdAt"
  | "rounds"
  | "tags";

export interface PackageItemDTO extends Pick<PackageListItemDTO, pickFields> {
  author: number;
}
