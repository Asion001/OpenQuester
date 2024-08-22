import { IFile } from "./file/IFile";
import { IBaseModel } from "./IBaseModel";
import { IGroup } from "./IGroup";

export interface IUser extends IBaseModel {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  newPassword?: string; // In case of changing password
  birthday?: Date;
  avatar?: IFile;
  groups?: IGroup[];
  access_token?: string;
  refresh_token?: string;
}
