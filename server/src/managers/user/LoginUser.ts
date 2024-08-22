import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { UserDataManager } from "./UserDataManager";

export class LoginUser extends UserDataManager {
  constructor(data: ILoginUser) {
    super();
    this.userData = {
      login: data.login,
      password: data.password,
    } as IUpdateUser;
    this.required = ["login", "password"];
  }

  public get data() {
    return this.userData;
  }
}
