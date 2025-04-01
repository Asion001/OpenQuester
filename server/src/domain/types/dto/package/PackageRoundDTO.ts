import { PackageThemeDTO } from "./PackageThemeDTO";

export interface PackageRoundDTO {
  name: string;
  description: string | null;
  themes: PackageThemeDTO[];
}
