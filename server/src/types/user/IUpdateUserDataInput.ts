import { IUpdateUserData } from "types/user/IUpdateUserData";

export interface IUpdateUserDataInput
  extends Pick<IUpdateUserData, "id" | "username" | "email" | "birthday"> {
  avatar?: string;
}
