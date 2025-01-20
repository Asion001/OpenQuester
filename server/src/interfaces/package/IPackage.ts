import { User } from "database/models/User";
import { OQContentStructure } from "interfaces/file/structures/OQContentStructure";

export interface IPackage {
  title: string;
  content: OQContentStructure;
  created_at: Date;
  author: User;
}
