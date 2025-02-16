import { BaseModel } from "domain/types/BaseModel";
import { File } from "infrastructure/database/models/File";
import { Permission } from "infrastructure/database/models/Permission";

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
