import { User } from "../../database/models/User";
import { OQContentStructure } from "../file/structures/OQContentStructure";

export interface IPackage {
  title: string;
  content: OQContentStructure;
  created_at: Date;
  author: User;
}
