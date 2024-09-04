import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";

export class LoginUser extends UserDataManager {
  constructor(data: IInputUserData) {
    super();
    this._userData = {
      login: data.login,
      password: data.password,
    } as ILoginUser;
    this._required = ["login", "password"];
  }
}
