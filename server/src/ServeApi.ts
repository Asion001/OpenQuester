import express from "express";
import bcrypt from "bcryptjs";
import cors from "cors";

import { type Express } from "express";
import { type Server } from "http";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { Database, db } from "./database/Database";
import { verifyTokenMiddleware } from "./middleware/authMiddleware";
import { Logger } from "./utils/Logger";
import { UserRestApiController } from "./controllers/rest/UserRestApiController";
import { ApiContext } from "./services/context/ApiContext";
import { FileRestApiController } from "./controllers/rest/FileRestApiController";
import { PackageRestApiController } from "./controllers/rest/PackageRestApiController";

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

  protected context!: ApiContext;

  constructor() {
    try {
      // Initialize reusable variables
      this.db = db;
      this.app = express();
      this.port = 3000;

      // Middlewares
      this.app.use(cors());
      this.app.use(express.json());
      this.app.use(verifyTokenMiddleware);

      // Initialize server listening
      this._server = this.app.listen(this.port, () => {
        Logger.info(`App listening on port: ${this.port}`);
      });

      this.context = new ApiContext({
        db: this.db,
        app: this.app,
        crypto: bcrypt,
      });

      // Attach API controllers
      this.attachControllers();
    } catch (err: any) {
      Logger.error(`Serve API error: ${err.message}`);
      throw new Error(err.message);
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
    new AuthRestApiController(this.context);
    new UserRestApiController(this.context);
    new FileRestApiController(this.context.app);
    new PackageRestApiController(this.context.app);
  }
}
