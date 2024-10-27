import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { UserDataManager } from "./UserDataManager";
import { Database } from "../../database/Database";

export class LoginUser extends UserDataManager {
  constructor(db: Database, data: IInputUserData) {
    super(db);
    this._userData = {
      login: data.login,
      password: data.password,
    };
    this._required = ["login", "password"];
  }
}
