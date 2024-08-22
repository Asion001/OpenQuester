import { IBaseModel } from "../IBaseModel";
import { File } from "../../database/models/File";
import { Group } from "../../database/models/Group";

export interface IUser extends IBaseModel {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: Date;
  avatar?: File;
  groups?: Group[];
  access_token?: string;
  refresh_token?: string;
}
