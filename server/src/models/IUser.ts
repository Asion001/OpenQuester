import { IFile } from "./file/IFile";
import { IBaseModel } from "./IBaseModel";
import { IGroup } from "./IGroup";

export interface IUser extends IBaseModel {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: Date; // Saving as we get (not in UTC)
  avatar?: IFile;
  groups?: IGroup[];
  access_token?: string;
  refresh_token?: string;
}
