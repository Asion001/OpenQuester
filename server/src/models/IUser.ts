// import { IFile } from "./files/IFile";

export interface IUser {
  id?: number;
  name?: string;
  email?: string;
  password?: string;
  birthday?: number; // timestamp
  // TODO: Comment out back when IFile will be added -> avatar?: File;
  access_token?: string;
  refresh_token?: string;
}
