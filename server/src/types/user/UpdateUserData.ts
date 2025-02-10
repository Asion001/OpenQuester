import { File } from "database/models/File";

export interface UpdateUserDTO {
  id: number;
  username?: string;
  email?: string;
  birthday?: string;
  avatar?: File;
}
