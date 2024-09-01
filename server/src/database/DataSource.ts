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

// Migrations imports
import { CreateUserAndFileTables_1_1_1722683756069 as createUserAndFileTables } from "./migrations/CreateUserAndFileTables_1_1_1722683756069";
import { UpdateUserModelFields_1_11_1723107959823 as updateUserModelFields } from "./migrations/UpdateUserModelFields_1_11_1723107959823";
import { CreatePermissionTable_1_2_1723128633623 as createPermissionTable } from "./migrations/CreatePermissionTable_1_2_1723128633623";
import { UpdateUserRequiredFields_1_21_1723204474011 as updateUserRequiredFields } from "./migrations/UpdateUserRequiredFields_1_21_1723204474011";

// Init env
const env = Environment.instance;

try {
  env.load(false);
} catch (err: any) {
  Logger.error(ServerResponse.FAILED_TO_LOAD_ENV);
  Logger.error(`Error message: ${err.message}`);
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
  entities: [User, File, Permission, UserPermissions],
  migrations: [
    createUserAndFileTables,
    updateUserModelFields,
    createPermissionTable,
    updateUserRequiredFields,
  ],
  migrationsRun: true,
  subscribers: [],
});
