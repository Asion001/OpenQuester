import { IUpdateUserData } from "types/user/IUpdateUserData";

export interface IUpdateUserDataInput
  extends Pick<IUpdateUserData, "id" | "name" | "email" | "birthday"> {
  avatar: string;
}
