import { IBaseModel } from "../IBaseModel";
import { File } from "../../database/models/File";
import { Permission } from "../../database/models/Permission";

export interface IUser extends IBaseModel {
  id?: number;
  name?: string;
  email?: string;
  birthday?: Date;
  avatar?: File;
  permissions?: Permission[];
}
