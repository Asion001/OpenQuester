import { Permission } from "database/models/Permission";

export interface IInputUserData {
  name?: string;
  email?: string;
  login?: string; // name or email
  password?: string;
  birthday?: Date;
  avatar?: string;
  permissions?: Permission[];
}
