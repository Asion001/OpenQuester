import { OQLogoFile } from "types/file/structures/OQLogoFile";

export interface OQMetadataStructure {
  title: string;
  date: string;
  publisher: string;
  logo: OQLogoFile;
  tags: string[];
  authors: string[];
  restriction: string;
  language: string;
  comment: string;
}
