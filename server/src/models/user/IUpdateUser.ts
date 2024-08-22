import { IUser } from "./IUser";

export interface IUpdateUser extends IUser {
  newPassword?: string;
}
