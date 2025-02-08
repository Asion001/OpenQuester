import { File } from "database/models/File";

export interface IRegisterUser {
  username: string;
  email?: string | null;
  discord_id?: string | null;
  birthday?: Date | null;
  avatar?: File | null;
}
