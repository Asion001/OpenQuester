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
import { FileUsage } from "./models/FileUsage";

// Migrations imports
import { CreateUserAndFileTables_0_1_1_1722683756069 as createUserAndFileTables } from "./migrations/0.1.1_CreateUserAndFileTables";
import { UpdateUserModelFields_0_1_11_1723107959823 as updateUserModelFields } from "./migrations/0.1.11_UpdateUserModelFields";
import { CreatePermissionTable_0_1_2_1723128633623 as createPermissionTable } from "./migrations/0.1.2_CreatePermissionTable";
import { UpdateUserRequiredFields_0_1_21_1723204474011 as updateUserRequiredFields } from "./migrations/0.1.21_UpdateUserRequiredFields";
import { WriteMoreInfoToDB_0_2_9_1725692779638 as writeMoreToDB } from "./migrations/0.2.9_WriteMoreInfoToDB";
import { ChangePermissionValidation_0_3_0_1729181792142 as changePermissionValidation } from "./migrations/0.3.0_ChangePermissionValidation";
import { AddDeleteFilePermission_0_3_9_1730832569761 as addDeletePermission } from "./migrations/0.3.9_AddDeleteFilePermission";
import { AddFileUsageTable_1731771003354 as addFileUsageTable } from "./migrations/0.3.9_Part2AddFileUsageTable";
import { RenameAuthorAndAvatarId_1734207358779 as renameAuthorAndAvatarId } from "./migrations/0.3.9_Part3RenameAuthorId";

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
  entities: [User, File, Permission, UserPermissions, Package, FileUsage],
  migrations: [
    createUserAndFileTables,
    createPermissionTable,
    updateUserModelFields,
    updateUserRequiredFields,
    writeMoreToDB,
    changePermissionValidation,
    addDeletePermission,
    addFileUsageTable,
    renameAuthorAndAvatarId,
  ],
  migrationsRun: true,
  subscribers: [],
});
