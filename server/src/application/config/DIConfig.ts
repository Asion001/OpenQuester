import Redis from "ioredis";
import { Server as IOServer } from "socket.io";

import { Container, CONTAINER_TYPES } from "application/Container";
import { StorageContextBuilder } from "application/context/storage/StorageContextBuilder";
import { GameService } from "application/services/game/GameService";
import { PackageService } from "application/services/package/PackageService";
import { SocketIOGameService } from "application/services/socket/SocketIOGameService";
import { TranslateService } from "application/services/text/TranslateService";
import { UserService } from "application/services/user/UserService";
import { Database } from "infrastructure/database/Database";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { File } from "infrastructure/database/models/File";
import { FileUsage } from "infrastructure/database/models/FileUsage";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { Permission } from "infrastructure/database/models/Permission";
import { User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { PermissionRepository } from "infrastructure/database/repositories/PermissionRepository";
import { RedisRepository } from "infrastructure/database/repositories/RedisRepository";
import { SocketUserDataRepository } from "infrastructure/database/repositories/SocketUserDataRepository";
import { PackageTagRepository } from "infrastructure/database/repositories/TagRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { DependencyService } from "infrastructure/services/dependency/DependencyService";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

export class DIConfig {
  constructor(
    private readonly db: Database,
    private readonly redisClient: Redis,
    private readonly io: IOServer
  ) {
    //
  }

  public async initialize() {
    Container.register(CONTAINER_TYPES.Database, this.db, "repository");
    Container.register(CONTAINER_TYPES.Redis, this.redisClient, "repository");
    Container.register(CONTAINER_TYPES.IO, this.io, "repository");

    const db = Container.get<Database>(CONTAINER_TYPES.Database);

    Container.register(
      CONTAINER_TYPES.FileUsageRepository,
      new FileUsageRepository(db.getRepository(FileUsage)),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.UserRepository,
      new UserRepository(
        db.getRepository(User),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.PackageTagRepository,
      new PackageTagRepository(db.getRepository(PackageTag)),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.FileRepository,
      new FileRepository(db.getRepository(File)),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.PackageRepository,
      new PackageRepository(
        db,
        db.getRepository(Package),
        Container.get<PackageTagRepository>(
          CONTAINER_TYPES.PackageTagRepository
        ),
        Container.get<FileRepository>(CONTAINER_TYPES.FileRepository)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.DependencyService,
      new DependencyService(
        Container.get<FileRepository>(CONTAINER_TYPES.FileRepository),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.S3StorageService,
      new S3StorageService(
        StorageContextBuilder.buildS3Context(),
        Container.get<FileRepository>(CONTAINER_TYPES.FileRepository),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<DependencyService>(CONTAINER_TYPES.DependencyService)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.PermissionRepository,
      new PermissionRepository(db.getRepository(Permission)),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.UserService,
      new UserService(
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.TranslateService,
      new TranslateService(),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.RedisService,
      new RedisRepository(),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.GameRepository,
      new GameRepository(
        Container.get<RedisRepository>(CONTAINER_TYPES.RedisService),
        new GameIndexManager(Container.get(CONTAINER_TYPES.Redis)),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<PackageRepository>(CONTAINER_TYPES.PackageRepository),
        Container.get<S3StorageService>(CONTAINER_TYPES.S3StorageService)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.GameService,
      new GameService(
        Container.get<IOServer>(CONTAINER_TYPES.IO),
        Container.get<GameRepository>(CONTAINER_TYPES.GameRepository),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.SocketUserDataRepository,
      new SocketUserDataRepository(
        Container.get<RedisRepository>(CONTAINER_TYPES.RedisService)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.SocketIOGameService,
      new SocketIOGameService(
        Container.get<SocketUserDataRepository>(
          CONTAINER_TYPES.SocketUserDataRepository
        ),
        Container.get<GameRepository>(CONTAINER_TYPES.GameRepository),
        Container.get<UserService>(CONTAINER_TYPES.UserService)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.PackageService,
      new PackageService(
        Container.get<PackageRepository>(CONTAINER_TYPES.PackageRepository),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<S3StorageService>(CONTAINER_TYPES.S3StorageService)
      ),
      "service"
    );
  }
}
