import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { OQLogoFile } from "domain/types/file/structures/OQLogoFile";

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
