import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";
import { PackageQuestionResponseDTO } from "domain/types/dto/package/response/PackageQuestionResponseDTO";

export interface PackageThemeResponseDTO extends PackageThemeDTO {
  id: number;
  questions: PackageQuestionResponseDTO[];
}
