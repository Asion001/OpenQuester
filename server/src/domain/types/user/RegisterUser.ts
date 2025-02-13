import { File } from "infrastructure/database/models/File";

export interface RegisterUser {
  username: string;
  email?: string | null;
  discord_id?: string | null;
  birthday?: Date | null;
  avatar?: File | null;
}
