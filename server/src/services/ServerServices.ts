import { UserService } from "services/UserService";
import { ContentStructureService } from "services/ContentStructureService";
import { AuthService } from "services/AuthService";
import { StorageServiceFactory } from "services/storage/StorageServiceFactory";
import { RedisService } from "services/RedisService";

/**
 * Server services locator
 *
 * Stores instances of all server services
 */
export class ServerServices {
  private static _user: UserService;
  private static _content: ContentStructureService;
  private static _auth: AuthService;
  private static _storage: StorageServiceFactory;
  private static _redis: RedisService;

  public static get user() {
    if (!this._user) {
      this._user = new UserService();
    }

    return this._user;
  }

  public static get content() {
    if (!this._content) {
      this._content = new ContentStructureService();
    }

    return this._content;
  }

  public static get auth() {
    if (!this._auth) {
      this._auth = new AuthService();
    }

    return this._auth;
  }

  public static get storage() {
    if (!this._storage) {
      this._storage = new StorageServiceFactory();
    }

    return this._storage;
  }

  public static get redis() {
    if (!this._redis) {
      this._redis = new RedisService();
    }

    return this._redis;
  }
}
