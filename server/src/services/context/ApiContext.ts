import { IApiContext } from "../../interfaces/IApiContext";
import bcrypt from "bcryptjs";

export class ApiContext {
  constructor(private readonly _ctx: IApiContext) {
    //
  }

  public get db() {
    return this._ctx.db;
  }

  public get app() {
    return this._ctx.app;
  }

  public get crypto() {
    return this._ctx.crypto ?? bcrypt;
  }

  public get env() {
    return this._ctx.env;
  }
}
