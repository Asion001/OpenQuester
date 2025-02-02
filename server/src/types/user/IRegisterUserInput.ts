import { IRegisterUser } from "types/user/IRegisterUser";

export interface IRegisterUserInput
  extends Pick<IRegisterUser, "name" | "email" | "password" | "birthday"> {
  avatar: string;
}
