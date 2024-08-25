import { DataSource, EntityTarget, ObjectLiteral, Repository } from "typeorm";
import { AppDataSource } from "./DataSource";
import { Logger } from "../utils/Logger";

/**
 * Handles Database initialization and management
 */
export class Database {
  private dataSource: DataSource;
  private _connected: boolean;

  /** Repositories caching */
  private repositories: Map<EntityTarget<any>, Repository<any>> = new Map();

  // TODO: Make DB driver injectable and create separate Driver instances
  constructor(dataSource: DataSource) {
    this._connected = false;
    Logger.warn("Connecting to DB...");

    this.dataSource = dataSource;
    this.dataSource
      .initialize()
      .then(() => {
        this._connected = true;
        Logger.info("Connection to DB established");
      })
      .catch((err) => {
        Logger.error(`DB is not connected: ${err}`);
        throw new Error(`DB is not connected: ${err}`);
      });
  }

  /**
   * Get TypeORM repository for given entity
   */
  public getRepository<T extends ObjectLiteral>(
    target: EntityTarget<T>
  ): Repository<T> {
    if (!this._connected) {
      throw new Error("DB is not connected");
    }

    let repository = this.repositories.get(target) as Repository<T> | undefined;

    if (!repository) {
      repository = this.dataSource.getRepository(target);
      this.repositories.set(target, repository);
    }

    return repository;
  }

  /** DataSource */
  public get ds() {
    return this.dataSource;
  }

  public connect() {
    this._connected = true;
    return true;
  }

  public disconnect() {
    this._connected = false;
    return true;
  }

  public get connected() {
    return this._connected;
  }
}

/** Database instance, should be used for all DB actions */
export const db = new Database(AppDataSource);
