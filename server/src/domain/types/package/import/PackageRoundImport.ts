import { Package } from "infrastructure/database/models/package/Package";

export interface PackageRoundImport {
  name: string;
  description?: string | null;
  package: Package;
  order: number;
}
