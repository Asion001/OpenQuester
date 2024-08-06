import { DataSource, EntityTarget, ObjectLiteral } from "typeorm";
import { AppDataSource } from "./DataSource";
import { Logger } from "../utils/Logger";

export class Database {
  public dataSource: DataSource;
  private _connected: boolean;

  constructor() {
    this._connected = false;
    Logger.warn("Connecting to DB...");

    this.dataSource = AppDataSource;
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

  public get connected() {
    return this._connected;
  }

  public getRepository(target: EntityTarget<ObjectLiteral>) {
    return this.dataSource.getRepository(target);
  }
}

export const db = new Database();
