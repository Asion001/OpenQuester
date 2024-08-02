import { IUser } from "../models/IUser";

export class UserService {
  public static register(data: IUser): IUser {
    return {
      name: "Mock user register",
      email: "Mock email r",
      access_token: "12312312 r",
      refresh_token: "124125 r",
    };
  }

  public static login(data: IUser): IUser {
    return {
      name: "Mock user login",
      email: "Mock email l",
      access_token: "12312312 l",
      refresh_token: "124125 l",
    };
  }
}
