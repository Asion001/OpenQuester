import { OQLogoFile } from "types/file/structures/OQLogoFile";

export interface OQMetadataStructure {
  id: string;
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
