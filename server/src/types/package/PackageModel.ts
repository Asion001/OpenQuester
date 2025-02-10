import { User } from "database/models/User";
import { OQContentStructure } from "types/file/structures/OQContentStructure";

export interface PackageModel {
  id: number;
  title: string;
  content: OQContentStructure;
  created_at: Date;
  author: User;
}
