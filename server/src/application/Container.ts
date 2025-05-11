import { HttpStatus } from "domain/enums/HttpStatus";
import { ServerResponse } from "domain/enums/ServerResponse";
import { ServerError } from "domain/errors/ServerError";

export class Container {
  private static instances = new Map<symbol, any>();
  private static repositories = new Map<symbol, any>();
  private static services = new Map<symbol, any>();

  static register<T>(
    key: symbol,
    instance: T,
    type: "service" | "repository"
  ): void {
    this.instances.set(key, instance);
    if (type === "service") this.services.set(key, instance);
    if (type === "repository") this.repositories.set(key, instance);
  }

  static get<T>(key: symbol): T {
    const instance = this.instances.get(key);
    if (!instance) {
      throw new ServerError(
        ServerResponse.DEPENDENCY_NOT_REGISTERED,
        HttpStatus.INTERNAL,
        {
          name: key.toString(),
        }
      );
    }

    return instance;
  }

  static getAllServices(): Map<symbol, any> {
    return new Map(this.services);
  }

  static getAllRepositories(): Map<symbol, any> {
    return new Map(this.repositories);
  }
}

export const CONTAINER_TYPES = {
  // Infrastructure
  Database: Symbol("Database"),
  Redis: Symbol("Redis"),
  IO: Symbol("IO"),

  // Repositories
  UserRepository: Symbol("UserRepository"),
  GameRepository: Symbol("GameRepository"),
  FileRepository: Symbol("FileRepository"),
  FileUsageRepository: Symbol("FileUsageRepository"),
  PermissionRepository: Symbol("PermissionRepository"),
  PackageRepository: Symbol("PackageRepository"),
  PackageTagRepository: Symbol("PackageTagRepository"),
  SocketUserDataRepository: Symbol("SocketUserDataRepository"),
  RedisRepository: Symbol("RedisRepository"),
  SocketChatRepository: Symbol("SocketChatRepository"),

  // Services
  UserService: Symbol("UserService"),
  GameService: Symbol("GameService"),
  TranslateService: Symbol("TranslateService"),
  DependencyService: Symbol("DependencyService"),
  S3StorageService: Symbol("S3StorageService"),
  SocketIOGameService: Symbol("SocketIOGameService"),
  PackageService: Symbol("PackageService"),
  RedisService: Symbol("RedisService"),
  SocketUserDataService: Symbol("SocketUserDataService"),
  FileService: Symbol("FileService"),
  FileUsageService: Symbol("FileUsageService"),
  PackageTagService: Symbol("PackageTagService"),
  SocketIOChatService: Symbol("SocketIOChatService"),
  RedisPubSubService: Symbol("RedisPubSubService"),
  SocketIOQuestionService: Symbol("SocketIOQuestionService"),
};
