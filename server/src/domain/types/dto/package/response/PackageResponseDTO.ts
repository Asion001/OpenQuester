import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageFileResponseDTO } from "domain/types/dto/package/response/PackageFileResponseDTO";
import { PackageRoundResponseDTO } from "domain/types/dto/package/response/PackageRoundResponseDTO";
import { PackageTagResponseDTO } from "domain/types/dto/package/response/PackageTagResponseDTO";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";

export interface PackageResponseDTO {
  id: number;
  title: string;
  description?: string | null;
  createdAt: Date;
  author: ShortUserInfo;
  ageRestriction: AgeRestriction;
  language?: string | null;
  logo: { file: PackageFileResponseDTO } | null;
  rounds: PackageRoundResponseDTO[];
  tags: PackageTagResponseDTO[];
}
