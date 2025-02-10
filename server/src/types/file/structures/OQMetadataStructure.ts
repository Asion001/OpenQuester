import { AgeRestriction } from "enums/game/AgeRestriction";
import { OQLogoFile } from "types/file/structures/OQLogoFile";

export interface OQMetadataStructure {
  title: string;
  createdAt: Date;
  logo: OQLogoFile;
  tags: string[];
  authors: number;
  ageRestriction: AgeRestriction;
  language: string;
  comment: string;
}
