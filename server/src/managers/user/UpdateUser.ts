import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";
import { Database } from "../../database/Database";

export class UpdateUser extends UserDataManager {
  constructor(db: Database, data: IInputUserData) {
    super(db);
    this._userData = {
      name: data.name,
      password: data.password,
      birthday: data.birthday,
      avatar: data.avatar,
    };
    this._required = [];
  }
}
