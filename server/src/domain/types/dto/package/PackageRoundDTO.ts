import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";

export interface PackageRoundDTO {
  id?: number;
  name: string;
  order: number
  description?: string | null;
  themes: PackageThemeDTO[];
}
