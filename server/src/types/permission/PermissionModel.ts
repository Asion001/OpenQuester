import { User } from "database/models/User";

export interface PermissionModel {
  id: number;
  name: string;
  users: User[];
}
