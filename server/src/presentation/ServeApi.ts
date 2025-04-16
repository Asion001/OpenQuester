import { type Express } from "express";
import { type Server as HTTPServer } from "http";
import Redis from "ioredis";
import { type Server as IOServer } from "socket.io";

import { DIConfig } from "application/config/DIConfig";
import { Container, CONTAINER_TYPES } from "application/Container";
import { type ApiContext } from "application/context/ApiContext";
import { GameService } from "application/services/game/GameService";
import { PackageService } from "application/services/package/PackageService";
import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { UserService } from "application/services/user/UserService";
import { SESSION_SECRET_LENGTH } from "domain/constants/session";
import { BaseError } from "domain/errors/BaseError";
import { ServerError } from "domain/errors/ServerError";
import { EnvType } from "infrastructure/config/Environment";
import { RedisConfig } from "infrastructure/config/RedisConfig";
import { type Database } from "infrastructure/database/Database";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { SocketUserDataService } from "infrastructure/services/socket/SocketRedisService";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { Logger } from "infrastructure/utils/Logger";
import { TemplateUtils } from "infrastructure/utils/TemplateUtils";
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
  private readonly _redis: Redis;
  /** HTTP Server */
  private _server!: HTTPServer;

  constructor(private readonly _context: ApiContext) {
    this._db = this._context.db;
    this._app = this._context.app;
    this._io = this._context.io;
    this._redis = RedisConfig.getClient();
    this._port = 3000;
  }

  public async init() {
    try {
      await this._context.env.loadSessionConfig(
        SESSION_SECRET_LENGTH,
        this._redis
      );

      // Build database connection
      await this._db.build();

      // Connect to Redis
      await RedisConfig.waitForConnection();

      // Middlewares
      await new MiddlewareController(this._context, this._redis).initialize();

      // Initialize server listening
      this._server = this._app.listen(this._port, () => {
        Logger.info(`App listening on port: ${this._port}`, APP_PREFIX);
      });
      this._io.listen(this._server);

      // Initialize Dependency injection Container
      await new DIConfig(this._db, this._redis, this._io).initialize();

      // Clean up all game rooms
      const gameRepository = Container.get<GameRepository>(
        CONTAINER_TYPES.GameRepository
      );
      await gameRepository.cleanupAllGames();

      // Clean up all authorized socket sessions
      const socketUserDataService = Container.get<SocketUserDataService>(
        CONTAINER_TYPES.SocketUserDataService
      );
      await socketUserDataService.cleanupAllSession();

      // Attach API controllers
      this._attachControllers();
      this._app.use(errorMiddleware);
    } catch (err: unknown) {
      // TODO: Translate errors from first level of nesting (initialization errors)
      let message = "unknown error";
      if (err instanceof BaseError) {
        message = TemplateUtils.text(err.message, err.textArgs ?? {});
      } else if (err instanceof Error) {
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
    // Reusable dependencies
    const app = this._context.app;

    // Services
    const userService = Container.get<UserService>(CONTAINER_TYPES.UserService);
    const packageService = Container.get<PackageService>(
      CONTAINER_TYPES.PackageService
    );
    const socketIOGameService = Container.get<SocketIOGameService>(
      CONTAINER_TYPES.SocketIOGameService
    );
    const storage = Container.get<S3StorageService>(
      CONTAINER_TYPES.S3StorageService
    );
    const game = Container.get<GameService>(CONTAINER_TYPES.GameService);
    const io = Container.get<IOServer>(CONTAINER_TYPES.IO);

    // Repositories
    const redis = Container.get<Redis>(CONTAINER_TYPES.Redis);
    const socketUserDataService = Container.get<SocketUserDataService>(
      CONTAINER_TYPES.SocketUserDataService
    );
    const userRepository = Container.get<UserRepository>(
      CONTAINER_TYPES.UserRepository
    );
    const fileRepository = Container.get<FileRepository>(
      CONTAINER_TYPES.FileRepository
    );

    // REST
    new UserRestApiController(app, userService, userRepository, fileRepository);
    new AuthRestApiController(
      app,
      redis,
      userRepository,
      fileRepository,
      storage,
      socketUserDataService
    );
    new PackageRestApiController(app, packageService);
    new FileRestApiController(app, storage);
    new GameRestApiController(app, game);
    new SwaggerRestApiController(app);

    if (this._context.env.ENV === EnvType.DEV) {
      new DevelopmentRestApiController(
        app,
        userRepository,
        this._context.env,
        game
      );
    }

    // Socket
    new SocketIOInitializer(io, socketIOGameService, socketUserDataService);
  }
}
