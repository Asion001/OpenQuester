import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { User } from "infrastructure/database/models/User";

export interface PackageModel {
  id: number;
  title: string;
  content: OQContentStructure;
  created_at: Date;
  author: User;
}
