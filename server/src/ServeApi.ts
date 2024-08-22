import express from "express";
import { Express } from "express";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { Database, db } from "./database/Database";
import { verifyTokenMiddleware } from "./middleware/AuthMiddleware";
import { Server } from "http";
import { Logger } from "./utils/Logger";
import { UserRestApiController } from "./controllers/rest/UserRestApiController";

/**
 * Servers all api endpoints in one place.
 */
export class ServeApi {
  /** Express app */
  protected app!: Express;
  /** Express server */
  protected _server!: Server;
  /** Application listening port */
  protected port!: number;
  /** Database instance */
  protected db!: Database;

  constructor() {
    try {
      // Initialize reusable variables
      this.db = db;
      this.app = express();
      this.port = 3000;

      // Middlewares
      this.app.use(express.json());
      this.app.use(verifyTokenMiddleware);

      // Initialize server listening
      this._server = this.app.listen(this.port, () => {
        Logger.info(`App listening on port: ${this.port}`);
      });

      // Attach API controllers
      this.attachControllers();
      Logger.info(
        `Api is served, server version: ${process.env.npm_package_version}`
      );
    } catch (err: any) {
      Logger.error(err.message);
    }
  }

  // Get API server instance
  public get server() {
    return this._server;
  }

  /**
   * Initializes API controllers.
   * API controller is an entity, that manages initializing and handling of endpoints
   * to which this controller related (you can see it in their names)
   *
   * All API controllers use same Database and app instances
   *
   * Required and possible fields to send on endpoints you can find
   * in `openapi/scheme.json`. This scheme used mostly in client-side for
   * generating and using of entities based on server endpoints.
   */
  public attachControllers() {
    new AuthRestApiController(this.db, this.app);
    new UserRestApiController(this.db, this.app);
  }
}
