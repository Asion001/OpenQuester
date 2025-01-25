import { File } from "database/models/File";

export interface IRegisterUser {
  name: string;
  email: string;
  password: string;
  birthday?: Date;
  avatar?: File;
}
