import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { IUserData } from "../../interfaces/user/UserData";
import { UserDataManager } from "./UserDataManager";

export class RegisterUser extends UserDataManager {
  constructor(data: IUserData) {
    super();
    this.userData = {
      name: data.name,
      email: data.email,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    } as IUpdateUser;
    this.required = ["name", "email", "password"];
  }

  public get data() {
    return this.userData;
  }
}
