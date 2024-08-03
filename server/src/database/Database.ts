import { DataSource, EntityTarget, ObjectLiteral } from "typeorm";
import { AppDataSource } from "./DataSource";
import { green, red } from "colorette";

export class Database {
  public dataSource: DataSource;

  constructor() {
    this.dataSource = AppDataSource;
    this.dataSource
      .initialize()
      .then(() => {
        console.log("\n" + green("Connection to DB established"));
      })
      .catch((err) => {
        console.log("\n" + red(`DB is not connected: ${err}`));
        throw new Error(`DB is not connected: ${err}`);
      });
  }

  public getRepository(target: EntityTarget<ObjectLiteral>) {
    return this.dataSource.getRepository(target);
  }
}

export const db = new Database();
