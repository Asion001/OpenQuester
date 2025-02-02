import { File } from "database/models/File";

export interface IUpdateUserData {
  id: number;
  name: string;
  email: string;
  birthday: string;
  avatar: File;
}
