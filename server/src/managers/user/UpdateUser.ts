import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";

export class UpdateUser extends UserDataManager {
  constructor(data: IInputUserData) {
    super();
    this._userData = {
      name: data.name,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    } as IUpdateUser;
    this._required = [];
  }
}
