import { File } from "database/models/File";

export interface IUpdateUserData {
  id: number;
  username?: string;
  email?: string;
  birthday?: string;
  avatar?: File;
}
