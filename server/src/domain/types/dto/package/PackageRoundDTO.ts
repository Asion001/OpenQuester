import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";

export interface PackageRoundDTO {
  id?: number;
  name: string;
  description?: string | null;
  themes: PackageThemeDTO[];
}
