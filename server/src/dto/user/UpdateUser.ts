import { IUpdateUser } from "../../interfaces/user/IUpdateUser";
import { IUserData } from "../../interfaces/user/UserData";
import { UserDTO } from "./UserDTO";

export class UpdateUser extends UserDTO {
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

  public get data() {
    return this.userData;
  }
}
