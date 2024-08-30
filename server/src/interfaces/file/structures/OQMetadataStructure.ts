import { OQFileStructure } from "./OQFileStructure";

export interface OQMetadataStructure {
  id: string;
  title: string;
  date: string;
  publisher: string;
  logo: OQFileStructure;
  tags: string[];
  authors: string[];
  restriction: string;
  comment: string;
}
