import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageFileDTO } from "domain/types/dto/package/PackageFileDTO";
import { PackageRoundDTO } from "domain/types/dto/package/PackageRoundDTO";
import { PackageTagDTO } from "domain/types/dto/package/PackageTagDTO";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";

export interface PackageDTO {
  id?: number;
  title: string;
  description?: string | null;
  createdAt: Date;
  author: ShortUserInfo;
  ageRestriction: AgeRestriction;
  language?: string | null;
  logo?: { file: PackageFileDTO } | null;
  rounds: PackageRoundDTO[];
  tags: PackageTagDTO[];
}
