import { PermissionDTO } from "types/dto/permission/PermissionDTO";

export interface UserDTO {
  id: number;
  username: string;
  email: string | null;
  discordId: string | null;
  birthday: Date | null;
  avatar: string | null; // presigned link of file GET
  createdAt: Date;
  updatedAt: Date;
  isDeleted: boolean;
  permissions: PermissionDTO[] | [];
}
