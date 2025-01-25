import { EAgeRestriction } from "enums/game/EAgeRestriction";
import { OQLogoFile } from "types/file/structures/OQLogoFile";

export interface OQMetadataStructure {
  title: string;
  createdAt: Date;
  logo: OQLogoFile;
  tags: string[];
  authors: number;
  ageRestriction: EAgeRestriction;
  language: string;
  comment: string;
}
