import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { IUserData } from "../../interfaces/user/UserData";
import { UserDataManager } from "./UserDataManager";

export class UpdateUser extends UserDataManager {
  constructor(data: IUserData) {
    super();
    this.userData = {
      name: data.name,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    } as IUpdateUser;
    this.required = ["password"];
  }
}
