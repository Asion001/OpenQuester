import { ContentStructureService } from "application/services/ContentStructureService";
import { GameService } from "application/services/game/GameService";
import { UserService } from "application/services/user/UserService";
import { RedisService } from "infrastructure/services/RedisService";
import { StorageServiceFactory } from "infrastructure/services/storage/StorageServiceFactory";

/**
 * Server services locator
 *
 * Stores instances of all server services
 */
export class ServerServices {
  private _user: UserService;
  private _content: ContentStructureService;
  private _storage: StorageServiceFactory;
  private _redis: RedisService;
  private _game: GameService;

  constructor() {
    this._user = new UserService();
    this._content = new ContentStructureService();
    this._storage = new StorageServiceFactory();
    this._redis = new RedisService();
    this._game = new GameService();
  }

  public get user() {
    if (!this._user) {
      this._user = new UserService();
    }

    return this._user;
  }

  public get content() {
    if (!this._content) {
      this._content = new ContentStructureService();
    }

    return this._content;
  }

  public get storage() {
    if (!this._storage) {
      this._storage = new StorageServiceFactory();
    }

    return this._storage;
  }

  public get redis() {
    if (!this._redis) {
      this._redis = new RedisService();
    }

    return this._redis;
  }

  public get game() {
    if (!this._game) {
      this._game = new GameService();
    }

    return this._game;
  }
}
