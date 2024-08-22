import { File } from "../../database/models/File";

export interface IUpdateUser {
  name?: string;
  birthday?: Date;
  avatar?: File;
}
