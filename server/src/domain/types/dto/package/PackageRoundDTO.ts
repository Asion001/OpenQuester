import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";

export interface PackageRoundDTO {
  name: string;
  description?: string | null;
  themes: PackageThemeDTO[];
}
