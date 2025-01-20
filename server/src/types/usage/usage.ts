import { Package } from "database/models/Package";
import { User } from "database/models/User";

export interface UsageEntries {
  users: User[];
  packages: Package[];
}
