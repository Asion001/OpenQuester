import { EAgeRestriction } from "enums/game/EAgeRestriction";
import { IShortUserInfo } from "types/user/IShortUserInfo";

export interface IPackageListItem {
  id: number;
  title: string;
  ageRestriction: EAgeRestriction;
  createdAt: Date;
  rounds: number;
  tags: string[];
  author: IShortUserInfo;
}
