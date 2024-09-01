import { IRegisterUser } from "../../interfaces/user/IRegisterUser";
import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";

export class RegisterUser extends UserDataManager {
  constructor(data: IInputUserData) {
    super();
    this._userData = {
      name: data.name,
      email: data.email,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    } as IRegisterUser;
    this._required = ["name", "email", "password"];
  }
}
