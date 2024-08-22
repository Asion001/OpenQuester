import { File } from "../../database/models/File";
import { Permission } from "../../database/models/Permission";

export interface IUserData {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: Date;
  avatar?: File;
  permissions?: Permission[];
}
