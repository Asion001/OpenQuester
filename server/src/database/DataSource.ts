import "reflect-metadata";

import { Logger } from "../utils/Logger";
import { Environment } from "../config/Environment";
import { ServerResponse } from "../enums/ServerResponse";

// Models
import { User } from "./models/User";
import { DataSource } from "typeorm";
import { File } from "./models/File";
import { Permission } from "./models/Permission";
import { UserPermissions } from "./models/UserPermission";
import { Package } from "./models/Package";
import { ErrorModel } from "./models/ErrorModel";

// Migrations imports
import { CreateUserAndFileTables_1_1_1722683756069 as createUserAndFileTables } from "./migrations/CreateUserAndFileTables_1_1_1722683756069";
import { UpdateUserModelFields_1_11_1723107959823 as updateUserModelFields } from "./migrations/UpdateUserModelFields_1_11_1723107959823";
import { CreatePermissionTable_1_2_1723128633623 as createPermissionTable } from "./migrations/CreatePermissionTable_1_2_1723128633623";
import { UpdateUserRequiredFields_1_21_1723204474011 as updateUserRequiredFields } from "./migrations/UpdateUserRequiredFields_1_21_1723204474011";
import { WriteMoreInfoToDB_0_2_9_1725692779638 as writeMoreToDB } from "./migrations/WriteMoreInfoToDB_0_2_9_1725692779638";

// Init env
const env = Environment.instance;

try {
  env.load(false);
} catch (err: unknown) {
  let message = "unknown error";
  if (err instanceof Error) {
    message = err.message;
  }
  Logger.error(ServerResponse.FAILED_TO_LOAD_ENV);
  Logger.error(`Error message: ${message}`);
  // Bravely exit from process since it's migration process created by TypeORM
  process.exit(0);
}

/** TypeORM's data source. Used for all DB operations */
export const AppDataSource = new DataSource({
  type: "postgres",
  host: env.DB_HOST,
  port: Number(env.DB_PORT),
  username: env.DB_USER,
  password: env.DB_PASS,
  database: env.DB_NAME,
  synchronize: false,
  logging: env.DB_LOGGER,
  entities: [User, File, Permission, UserPermissions, Package, ErrorModel],
  migrations: [
    createUserAndFileTables,
    updateUserModelFields,
    createPermissionTable,
    updateUserRequiredFields,
    writeMoreToDB,
  ],
  migrationsRun: true,
  subscribers: [],
});
