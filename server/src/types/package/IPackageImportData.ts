import { User } from "database/models/User";
import { OQContentStructure } from "types/file/structures/OQContentStructure";

export interface IPackageImportData {
  title: string;
  created_at: Date;
  author: User;
  content: OQContentStructure;
}
