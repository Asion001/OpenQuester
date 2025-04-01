import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";

export interface PackageQuestionChoiceAnswerImport {
  question: PackageQuestion;
  text?: string | null;
  file?: File | null;
}
