import { File } from "../../database/models/File";
import { Permission } from "../../database/models/Permission";

export interface IInputUserData {
  name?: string;
  email?: string;
  login?: string; // name or email
  password?: string;
  birthday?: Date;
  avatar?: File;
  permissions?: Permission[];
}
