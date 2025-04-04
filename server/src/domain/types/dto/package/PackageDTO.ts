import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageFileDTO } from "domain/types/dto/package/PackageFileDTO";
import { PackageRoundDTO } from "domain/types/dto/package/PackageRoundDTO";
import { PackageTagDTO } from "domain/types/dto/package/PackageTagDTO";
import { User } from "infrastructure/database/models/User";

export interface PackageDTO {
  title: string;
  description?: string | null;
  createdAt: Date;
  author: User;
  ageRestriction: AgeRestriction;
  language?: string | null;
  logo?: { file: PackageFileDTO } | null;
  rounds: PackageRoundDTO[];
  tags: PackageTagDTO[];
}
