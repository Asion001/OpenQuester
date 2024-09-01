import { DataSource, EntityTarget, ObjectLiteral, Repository } from "typeorm";
import { Logger } from "../utils/Logger";
import { ServerResponse } from "../enums/ServerResponse";
import { ServerError } from "../error/ServerError";

/**
 * Handles Database initialization and management
 */
export class Database {
  private static _instanceMap: Map<DataSource, Database> = new Map();
  private _connected: boolean = false;
  private repositories: Map<EntityTarget<any>, Repository<any>> = new Map();

  private constructor(private _dataSource: DataSource) {
    if (!this._dataSource) {
      throw new ServerError(ServerResponse.INVALID_DATA_SOURCE);
    }
  }

  /**
   * Get or create instance from specified data source
   */
  public static getInstance(dataSource: DataSource): Database {
    const db = Database._instanceMap.get(dataSource);

    if (!db) {
      const freshDatabase = new Database(dataSource);

      Database._instanceMap.set(dataSource, freshDatabase);
      return freshDatabase;
    }

    return db;
  }

  /**
   * Build connection to the database
   */
  public async build() {
    Logger.warn("Connecting to DB...");

    try {
      await this._dataSource.initialize();
      this._connected = true;
      Logger.info("Connection to DB established");
      Logger.info(`API version: ${process.env.npm_package_version}`);
    } catch (err: any) {
      throw new ServerError(
        `${ServerResponse.DB_NOT_CONNECTED} -> ${err.message}`
      );
    }
  }

  public waitForConnection() {
    //
  }

  /**
   * Get TypeORM repository for the given entity.
   * Caches the repository to avoid multiple creations.
   */
  public getRepository<T extends ObjectLiteral>(
    target: EntityTarget<T>
  ): Repository<T> {
    if (!this._connected) {
      throw new ServerError(ServerResponse.DB_NOT_CONNECTED);
    }

    let repository = this.repositories.get(target) as Repository<T> | undefined;

    if (!repository) {
      repository = this._dataSource.getRepository(target);
      this.repositories.set(target, repository);
    }

    return repository;
  }

  public get dataSource(): DataSource {
    if (!this._connected) {
      throw new ServerError(ServerResponse.DB_NOT_CONNECTED);
    }
    return this._dataSource;
  }

  public connect(): void {
    this._connected = true;
  }

  public disconnect(): void {
    this._connected = false;
  }

  public get connected(): boolean {
    return this._connected;
  }
}
