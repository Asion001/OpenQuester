import { PackageFileType } from "domain/enums/package/PackageFileType";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";

export interface PackageAnswerFileImport {
  file: File;
  order: number;
  type: PackageFileType;
  display_time: number;
  question: PackageQuestion;
}
