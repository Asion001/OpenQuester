import { PackageQuestionDTO } from "./PackageQuestionDTO";

export interface PackageThemeDTO {
  name: string;
  description?: string | null;
  order: number;
  questions: PackageQuestionDTO[];
}
