import { DataSource, EntityTarget, ObjectLiteral } from "typeorm";
import { AppDataSource } from "./DataSource";
import { Logger } from "../utils/Logger";

export class Database {
  private dataSource: DataSource;
  private _connected: boolean;

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

  public getRepository(target: EntityTarget<ObjectLiteral>) {
    if (!this._connected) {
      throw new Error("DB is not connected");
    }
    return this.dataSource.getRepository(target);
  }

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

export const db = new Database(AppDataSource);
