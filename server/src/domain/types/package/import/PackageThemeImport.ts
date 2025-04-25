import { PackageRound } from "infrastructure/database/models/package/PackageRound";

export interface PackageThemeImport {
  name: string;
  description?: string | null;
  round: PackageRound;
  order: number;
}
