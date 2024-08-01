import { IUser } from "../models/IUser";

export class UserService {
  public static register(data: IUser): string {
    return "Mocking user register";
  }

  public static login(data: IUser): string {
    return "Mocking user login";
  }
}
