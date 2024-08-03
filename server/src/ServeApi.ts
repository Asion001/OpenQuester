import express from "express";
import { Express } from "express";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { green } from "colorette";
import { Database, db } from "./database/Database";

export class ServeApi {
  protected app!: Express;
  protected port!: number;
  protected db!: Database;

  constructor() {
    try {
      this.db = db;
      this.app = express();
      this.port = 3000;

      this.app.use(express.json());

      this.app.listen(this.port, () => {
        console.log(green(`App listening on port: ${this.port}`));
      });
      this.attachControllers();
    } catch (err: any) {
      console.error(err);
    }
  }

  public attachControllers() {
    new AuthRestApiController(this.app);
  }
}
