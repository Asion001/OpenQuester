import { IRegisterUser } from "../../interfaces/user/IRegisterUser";
import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";

export class RegisterUser extends UserDataManager {
  constructor(data: IInputUserData) {
    super();
    this.userData = {
      name: data.name,
      email: data.email,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    } as IRegisterUser;
    this.required = ["name", "email", "password"];
  }
}
