import express from "express";
import cors from "cors";

import { type Express } from "express";
import { type Server } from "http";
import { type Database } from "./database/Database";
import { type ApiContext } from "./services/context/ApiContext";

import { Logger } from "./utils/Logger";
import { AuthRestApiController } from "./controllers/rest/AuthRestApiController";
import { verifyTokenMiddleware } from "./middleware/authMiddleware";
import { UserRestApiController } from "./controllers/rest/UserRestApiController";
import { FileRestApiController } from "./controllers/rest/FileRestApiController";
import { PackageRestApiController } from "./controllers/rest/PackageRestApiController";
import { StorageServiceFactory } from "./services/storage/StorageServiceFactory";
import { ServerError } from "./error/ServerError";

/**
 * Servers all api endpoints in one place.
 */
export class ServeApi {
  /** Express app */
  protected _app!: Express;
  /** Express server */
  protected _server!: Server;
  /** Application listening port */
  protected _port!: number;
  /** Database instance */
  protected _db!: Database;

  constructor(protected _context: ApiContext) {
    this._db = this._context.db;
    this._app = this._context.app;
    this._port = 3000;
  }

  public async init() {
    try {
      // Build database connection
      await this._db.build();

      // Middlewares
      this._app.use(cors());
      this._app.use(express.json());
      this._app.use(verifyTokenMiddleware);

      // Initialize server listening
      this._server = this._app.listen(this._port, () => {
        Logger.info(`App listening on port: ${this._port}`);
      });

      // Attach API controllers
      this._attachControllers();
    } catch (err: unknown) {
      let message = "unknown error";
      if (err instanceof Error) {
        message = err.message;
      }
      throw new ServerError(`Serve API error -> ${message}`);
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
  private _attachControllers() {
    const storageService = StorageServiceFactory.createStorageService(
      "minio",
      this._context.fileContext
    );

    new AuthRestApiController(this._context);
    new UserRestApiController(this._context);
    new FileRestApiController(this._context, storageService);
    new PackageRestApiController(this._context, storageService);
  }
}
