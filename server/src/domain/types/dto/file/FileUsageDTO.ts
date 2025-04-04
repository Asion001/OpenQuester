import { type File } from "infrastructure/database/models/File";
import { type Package } from "infrastructure/database/models/package/Package";
import { type User } from "infrastructure/database/models/User";

export interface FileUsageDTO {
  file: File;
  package: Package | undefined;
  user: User | undefined;
}
