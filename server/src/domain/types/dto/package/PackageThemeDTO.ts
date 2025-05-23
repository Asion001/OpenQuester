import { PackageQuestionDTO } from "./PackageQuestionDTO";

export interface PackageThemeDTO {
  id?: number;
  name: string;
  description?: string | null;
  order: number;
  questions: PackageQuestionDTO[];
}
