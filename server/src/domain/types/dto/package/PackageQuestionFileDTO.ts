import { PackageFileDTO } from "domain/types/dto/package/PackageFileDTO";

export interface PackageQuestionFileDTO {
  file: PackageFileDTO;
  displayTime: number;
  order: number;
}
