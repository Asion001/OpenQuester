import { PackageRoundDTO } from "domain/types/dto/package/PackageRoundDTO";
import { PackageThemeResponseDTO } from "domain/types/dto/package/response/PackageThemeResponseDTO";

export interface PackageRoundResponseDTO extends PackageRoundDTO {
  id: number;
  themes: PackageThemeResponseDTO[];
}
