import { IBaseModel } from "types/IBaseModel";
import { File } from "database/models/File";
import { Permission } from "database/models/Permission";

/** All possible user fields */
export interface IUserModel extends IBaseModel {
  id?: number;
  name: string;
  email?: string;
  password: string;
  birthday?: Date | null;
  avatar?: File | null;
  permissions?: Permission[];
}
