import { File } from "infrastructure/database/models/File";

export interface UpdateUserDTO {
  username?: string;
  email?: string;
  birthday?: string;
  avatar?: File;
}
