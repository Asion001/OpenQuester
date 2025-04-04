import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageFileDTO } from "domain/types/dto/package/PackageFileDTO";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";

export interface PackageListItemDTO {
  id: number;
  title: string;
  description?: string | null;
  createdAt: Date;
  author: ShortUserInfo;
  ageRestriction: AgeRestriction;
  language?: string | null;
  logo?: { file: PackageFileDTO } | null;
  roundsCount: number;
  questionsCount: number;
  tags: string[];
}
