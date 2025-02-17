import Redis from "ioredis";
import { Server as IOServer } from "socket.io";

import { Container, CONTAINER_TYPES } from "application/Container";
import { StorageContextBuilder } from "application/context/storage/StorageContextBuilder";
import { ContentStructureService } from "application/services/ContentStructureService";
import { GameService } from "application/services/game/GameService";
import { PackageService } from "application/services/package/PackageService";
import { TranslateService } from "application/services/text/TranslateService";
import { UserService } from "application/services/user/UserService";
import { Database } from "infrastructure/database/Database";
import { GameIndexManager } from "infrastructure/database/managers/game/GameIndexManager";
import { File } from "infrastructure/database/models/File";
import { FileUsage } from "infrastructure/database/models/FileUsage";
import { Package } from "infrastructure/database/models/Package";
import { Permission } from "infrastructure/database/models/Permission";
import { User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { PermissionRepository } from "infrastructure/database/repositories/PermissionRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { RedisService } from "infrastructure/services/RedisService";
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
    // Infrastructure
    Container.register(CONTAINER_TYPES.Database, this.db, "repository");
    Container.register(CONTAINER_TYPES.Redis, this.redisClient, "repository");
    Container.register(CONTAINER_TYPES.IO, this.io, "repository");

    // Repositories
    Container.register(
      CONTAINER_TYPES.FileUsageRepository,
      new FileUsageRepository(
        Container.get<Database>(CONTAINER_TYPES.Database).getRepository(
          FileUsage
        )
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.UserRepository,
      new UserRepository(
        Container.get<Database>(CONTAINER_TYPES.Database).getRepository(User),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.PackageRepository,
      new PackageRepository(
        Container.get<Database>(CONTAINER_TYPES.Database).getRepository(Package)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.GameRepository,
      new GameRepository(
        Container.get<Redis>(CONTAINER_TYPES.Redis),
        new GameIndexManager(Container.get(CONTAINER_TYPES.Redis)),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<PackageRepository>(CONTAINER_TYPES.PackageRepository)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.FileRepository,
      new FileRepository(
        Container.get<Database>(CONTAINER_TYPES.Database).getRepository(File)
      ),
      "repository"
    );

    Container.register(
      CONTAINER_TYPES.PermissionRepository,
      new PermissionRepository(
        Container.get<Database>(CONTAINER_TYPES.Database).getRepository(
          Permission
        )
      ),
      "repository"
    );

    // Services

    Container.register(
      CONTAINER_TYPES.GameService,
      new GameService(
        Container.get<GameRepository>(CONTAINER_TYPES.GameRepository),
        Container.get<IOServer>(CONTAINER_TYPES.IO),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository)
      ),
      "service"
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
      CONTAINER_TYPES.DependencyService,
      new DependencyService(
        Container.get<FileRepository>(CONTAINER_TYPES.FileRepository),
        Container.get<FileUsageRepository>(CONTAINER_TYPES.FileUsageRepository)
      ),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.ContentStructureService,
      new ContentStructureService(),
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
      CONTAINER_TYPES.TranslateService,
      new TranslateService(),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.RedisService,
      new RedisService(),
      "service"
    );

    Container.register(
      CONTAINER_TYPES.PackageService,
      new PackageService(
        Container.get<PackageRepository>(CONTAINER_TYPES.PackageRepository),
        Container.get<UserRepository>(CONTAINER_TYPES.UserRepository),
        Container.get<ContentStructureService>(
          CONTAINER_TYPES.ContentStructureService
        ),
        Container.get<S3StorageService>(CONTAINER_TYPES.S3StorageService)
      ),
      "service"
    );
  }
}
