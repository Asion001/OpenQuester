import { PackageFileDTO } from "domain/types/dto/package/PackageFileDTO";

export interface PackageAnswerDTO {
  text: string | null;
  file: PackageFileDTO | null;
}
