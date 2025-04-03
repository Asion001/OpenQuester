import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { File } from "infrastructure/database/models/File";
import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { User } from "infrastructure/database/models/User";

export interface PackageImport {
  title: string;
  createdAt: Date;
  language?: string | null;
  description?: string | null;
  ageRestriction: AgeRestriction;
  author: User;
  logo?: File | null;
  tags: PackageTag[];
}
