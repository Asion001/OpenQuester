import { AgeRestriction } from "enums/game/AgeRestriction";
import { ShortUserInfo } from "types/user/ShortUserInfo";

export interface PackageListItemDTO {
  id: number;
  title: string;
  ageRestriction: AgeRestriction;
  createdAt: Date;
  rounds: number;
  tags: string[];
  author: ShortUserInfo;
}
