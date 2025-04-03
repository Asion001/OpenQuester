import { Package } from "infrastructure/database/models/package/Package";
import { User } from "infrastructure/database/models/User";

export interface UsageEntries {
  users: User[];
  packages: Package[];
}
