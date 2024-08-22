import { IFile } from "./file/IFile";
import { IBaseModel } from "./IBaseModel";

export interface IUser extends IBaseModel {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: Date; // Saving as we get (not in UTC)
  avatar?: IFile;
  access_token?: string;
  refresh_token?: string;
}
