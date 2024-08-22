import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";

export class LoginUser extends UserDataManager {
  constructor(data: IInputUserData) {
    super();
    this.userData = {
      login: data.login,
      password: data.password,
    } as ILoginUser;
    this.required = ["login", "password"];
  }
}