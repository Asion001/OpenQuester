import bcrypt from "bcryptjs";

import { IApiContext } from "types/context/IApiContext";

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

  /**
   * Server services locator
   */
  public get serverServices() {
    return this._ctx.serverServices;
  }
}
