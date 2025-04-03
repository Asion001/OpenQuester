import { PackageFileType } from "domain/enums/package/PackageFileType";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";

export interface PackageQuestionChoiceAnswerImport {
  question: PackageQuestion;
  text?: string | null;
  fileData?: {
    file: File;
    type: PackageFileType;
  } | null;
}
