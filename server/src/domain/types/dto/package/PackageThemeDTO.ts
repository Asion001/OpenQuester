import { PackageQuestionDTO } from "./PackageQuestionDTO";

export interface PackageThemeDTO {
  name: string;
  description?: string | null;
  questions: PackageQuestionDTO[];
}
