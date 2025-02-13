import { type Express } from "express";
import { type Server as HTTPServer } from "http";
import { type Server as IOServer } from "socket.io";

import { type ApiContext } from "application/context/ApiContext";
import { type Database } from "infrastructure/database/Database";

import { SESSION_SECRET_LENGTH } from "domain/constants/session";
import { ServerError } from "domain/errors/ServerError";
import { EnvType } from "infrastructure/config/Environment";
import { RedisConfig } from "infrastructure/config/RedisConfig";
import { Logger } from "infrastructure/utils/Logger";
import { SocketIOInitializer } from "presentation/controllers/io/SocketIOInitializer";
import { MiddlewareController } from "presentation/controllers/middleware/MiddlewareController";
import { AuthRestApiController } from "presentation/controllers/rest/AuthRestApiController";
import { DevelopmentRestApiController } from "presentation/controllers/rest/DevelopmentRestApiController";
import { FileRestApiController } from "presentation/controllers/rest/FileRestApiController";
import { GameRestApiController } from "presentation/controllers/rest/GameRestApiController";
import { PackageRestApiController } from "presentation/controllers/rest/PackageRestApiController";
import { SwaggerRestApiController } from "presentation/controllers/rest/SwaggerRestApiController";
import { UserRestApiController } from "presentation/controllers/rest/UserRestApiController";
import { errorMiddleware } from "presentation/middleware/errorMiddleware";

const APP_PREFIX = "[APP]: ";

/**
 * Servers all api endpoints in one place.
 */
export class ServeApi {
  /** Express app */
  private readonly _app: Express;
  /** SocketIO server */
  private readonly _io: IOServer;
  /** Application listening port */
  private readonly _port: number;
  /** Database instance */
  private readonly _db: Database;
  /** HTTP Server */
  private _server!: HTTPServer;

  constructor(private readonly _context: ApiContext) {
    this._db = this._context.db;
    this._app = this._context.app;
    this._io = this._context.io;
    this._port = 3000;
  }

  public async init() {
    try {
      const redisClient = RedisConfig.getClient();

      await this._context.env.loadSessionConfig(
        SESSION_SECRET_LENGTH,
        redisClient
      );

      // Build database connection
      await this._db.build();

      // Connect to Redis
      await RedisConfig.waitForConnection();

      // Middlewares
      await new MiddlewareController(this._context, redisClient).initialize();

      // Initialize server listening
      this._server = this._app.listen(this._port, () => {
        Logger.info(`App listening on port: ${this._port}`, APP_PREFIX);
      });
      this._io.listen(this._server);

      // Attach API controllers
      this._attachControllers();
      this._app.use(errorMiddleware);
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
    // REST
    new AuthRestApiController(this._context);
    new UserRestApiController(this._context);
    new FileRestApiController(this._context);
    new GameRestApiController(this._context);
    new PackageRestApiController(this._context);
    new SwaggerRestApiController(this._context);

    if (this._context.env.ENV === EnvType.DEV) {
      new DevelopmentRestApiController(this._context);
    }

    // Socket
    new SocketIOInitializer(this._context);
  }
}
