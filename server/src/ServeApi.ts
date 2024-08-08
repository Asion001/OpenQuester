import express from "express";
import { Express } from "express";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { Database, db } from "./database/Database";
import { verifyTokenMiddleware } from "./middleware/AuthMiddleware";
import { Server } from "http";
import { Logger } from "./utils/Logger";
import { UserRestApiController } from "./controllers/rest/UserRestApiController";

export class ServeApi {
  protected app!: Express;
  protected _server!: Server;
  protected port!: number;
  protected db!: Database;

  constructor() {
    try {
      this.db = db;
      this.app = express();
      this.port = 3000;
      this.app.use(express.json());
      this.app.use(verifyTokenMiddleware);

      this._server = this.app.listen(this.port, () => {
        Logger.info(`App listening on port: ${this.port}`);
      });
      this.attachControllers();
    } catch (err: any) {
      Logger.error(err.message);
    }
  }

  public get server() {
    return this._server;
  }

  public attachControllers() {
    new AuthRestApiController(this.db, this.app);
    new UserRestApiController(this.db, this.app);
  }
}
