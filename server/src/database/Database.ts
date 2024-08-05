import { DataSource, EntityTarget, ObjectLiteral } from "typeorm";
import { AppDataSource } from "./DataSource";
import { Logger } from "../utils/Logger";


export class Database {
  public dataSource: DataSource;

  constructor() {
    Logger.warn("Connecting to DB...");

    this.dataSource = getAppDataSource();
    this.dataSource
      .initialize()
      .then(() => {
        Logger.info("Connection to DB established");
      })
      .catch((err) => {
        Logger.error(`DB is not connected: ${err}`);
        throw new Error(`DB is not connected: ${err}`);
      });
  }

  public getRepository(target: EntityTarget<ObjectLiteral>) {
    return this.dataSource.getRepository(target);
  }
}

export const db = new Database();
