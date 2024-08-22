import { File } from "../../database/models/File";

export interface IUpdateUser {
  name?: string;
  password?: string;
  birthday?: Date;
  avatar?: File;
}
