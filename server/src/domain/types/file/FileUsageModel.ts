import { File } from "infrastructure/database/models/File";
import { Package } from "infrastructure/database/models/package/Package";
import { User } from "infrastructure/database/models/User";

export interface FileUsageModel {
  id: number;
  file: File;
  package: Package | undefined;
  user: User | undefined;
}
