import { IApiContext } from "../../interfaces/context/IApiContext";
import bcrypt from "bcryptjs";

export class ApiContext {
  private readonly _ctx: IApiContext;

  constructor(ctx: IApiContext) {
    this._ctx = ctx;
  }

  /**
   * Database
   */
  public get db() {
    return this._ctx.db;
  }

  /**
   * Express application
   */
  public get app() {
    return this._ctx.app;
  }

  /**
   * socket.io server
   */
  public get io() {
    return this._ctx.io;
  }

  /**
   * Crypto library instance
   */
  public get crypto() {
    return this._ctx.crypto ?? bcrypt;
  }

  /**
   * Project environment
   */
  public get env() {
    return this._ctx.env;
  }
}
