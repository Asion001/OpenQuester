import { File } from "database/models/File";
import { Package } from "database/models/Package";
import { User } from "database/models/User";

export interface FileUsageModel {
  id: number;
  file: File;
  package: Package | undefined;
  user: User | undefined;
}
