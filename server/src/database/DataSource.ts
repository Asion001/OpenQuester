import "reflect-metadata";
import { DataSource } from "typeorm";
import { User } from "./models/User";
import { File } from "./models/File";
import { Environment } from "../config/Environment";
import { CreateUserAndFileTables_1_1_1722683756069 } from "./migrations/CreateUserAndFileTables_1_1";
import { bold, red } from "colorette";

try {
  Environment.load();
} catch (err: any) {
  console.error(bold(red(err)));
  process.exit(1);
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
