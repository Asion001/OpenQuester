import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { UserDTO } from "./UserDTO";

export class LoginUser extends UserDTO {
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
