import { IFile } from "./files/IFile";

export interface IUser {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: number; // timestamp
  avatar?: IFile;
  access_token?: string;
  refresh_token?: string;
}
