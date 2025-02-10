import { File } from "database/models/File";
import { Permission } from "database/models/Permission";
import { BaseModel } from "types/BaseModel";

/** All possible user fields */
export interface UserModel extends BaseModel {
  id?: number;
  username: string;
  email?: string | null;
  discord_id?: string | null;
  birthday?: Date | null;
  avatar?: File | null;
  permissions?: Permission[];
}
