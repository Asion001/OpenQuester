import { type User } from "infrastructure/database/models/User";

export interface PermissionModel {
  id: number;
  name: string;
  users: User[];
}
