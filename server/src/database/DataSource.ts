import "reflect-metadata";
import { DataSource } from "typeorm";
import { User } from "./models/User";
import { File } from "./models/File";
import { Environment } from "../config/Environment";
import { CreateUserAndFileTables_1_1_1722683756069 } from "./migrations/CreateUserAndFileTables_1_1";
import { Logger } from "../utils/Logger";

try {
  Environment.load(false);
} catch (err: any) {
  Logger.error("Failed to load environment variables, closing...");
  Logger.error(`Error message: ${err.message}`);
  // Bravely exit from process since it's migration process created by TypeORM
  process.exit(0);
}

export const AppDataSource = new DataSource({
  type: "postgres",
  host: Environment.DB_HOST,
  port: Number(Environment.DB_PORT),
  username: Environment.DB_USER,
  password: Environment.DB_PASS,
  database: Environment.DB_NAME,
  synchronize: false,
  logging: Environment.DB_LOGGER,
  entities: [User, File],
  migrations: [CreateUserAndFileTables_1_1_1722683756069],
  migrationsRun: true,
  subscribers: [],
});
