import express from "express";
import { type Express } from "express";
import cors from "cors";
import { type Server as HTTPServer } from "http";
import { type Server as IOServer } from "socket.io";

import { type Database } from "database/Database";
import { type ApiContext } from "services/context/ApiContext";

import { Logger } from "utils/Logger";
import { AuthRestApiController } from "controllers/rest/AuthRestApiController";
import { verifyToken } from "middleware/AuthMiddleware";
import { UserRestApiController } from "controllers/rest/UserRestApiController";
import { FileRestApiController } from "controllers/rest/FileRestApiController";
import { PackageRestApiController } from "controllers/rest/PackageRestApiController";
import { ServerError } from "error/ServerError";
import { logMiddleware } from "middleware/log/DebugLogMiddleware";
import { SwaggerRestApiController } from "controllers/rest/SwaggerController";
import { SocketIOController } from "controllers/io/SocketIOController";
import { RedisConfig } from "config/RedisConfig";

const APP_PREFIX = "[APP]: ";

/**
 * Servers all api endpoints in one place.
 */
export class ServeApi {
  /** Express app */
  protected _app: Express;
  /** SocketIO server */
  protected _io: IOServer;
  /** Application listening port */
  protected _port: number;
  /** Database instance */
  protected _db: Database;
  /** HTTP Server */
  protected _server!: HTTPServer;

  constructor(protected _context: ApiContext) {
    this._db = this._context.db;
    this._app = this._context.app;
    this._io = this._context.io;
    this._port = 3000;
  }

  public async init() {
    try {
      // Build database connection
      await this._db.build();

      // Middlewares
      this._app.use(logMiddleware);
      this._app.use(cors());
      this._app.use(express.json());
      this._app.use(verifyToken);

      // Initialize server listening
      this._server = this._app.listen(this._port, () => {
        Logger.info(`App listening on port: ${this._port}`, APP_PREFIX);
      });
      this._io.listen(this._server);

      // Attach API controllers
      this._attachControllers();

      // Connect to Redis
      await RedisConfig.waitForConnection();
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
    new AuthRestApiController(this._context);
    new UserRestApiController(this._context);
    new FileRestApiController(this._context);
    new PackageRestApiController(this._context);
    new SwaggerRestApiController(this._context);
    new SocketIOController(this._context);
  }
}
