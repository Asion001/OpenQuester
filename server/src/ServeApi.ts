import express from "express";
import { Express } from "express";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { bold, green, red } from "colorette";
import { Database, db } from "./database/Database";
import { verifyTokenMiddleware } from "./middleware/AuthMiddleware";
import { Server } from "http";

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
        console.log(green(`App listening on port: ${this.port}`));
      });
      this.attachControllers();
    } catch (err: any) {
      console.error(bold(red(err.message)));
    }
  }

  public get server() {
    return this._server;
  }

  public attachControllers() {
    new AuthRestApiController(this.app);
  }
}
