import "reflect-metadata";
import { DataSource } from "typeorm";
import { SnakeNamingStrategy } from "typeorm-naming-strategies";

import { ServerResponse } from "domain/enums/ServerResponse";
import { Environment } from "infrastructure/config/Environment";
import { Logger } from "infrastructure/utils/Logger";

// Models
import { File } from "infrastructure/database/models/File";
import { FileUsage } from "infrastructure/database/models/FileUsage";
import { Package } from "infrastructure/database/models/Package";
import { Permission } from "infrastructure/database/models/Permission";
import { User } from "infrastructure/database/models/User";

// Migrations imports
import { UpdateUserModelFields_0_1_11_1723107959823 as updateUserModelFields } from "infrastructure/database/migrations/0.1.11_UpdateUserModelFields";
import { CreateUserAndFileTables_0_1_1_1722683756069 as createUserAndFileTables } from "infrastructure/database/migrations/0.1.1_CreateUserAndFileTables";
import { UpdateUserRequiredFields_0_1_21_1723204474011 as updateUserRequiredFields } from "infrastructure/database/migrations/0.1.21_UpdateUserRequiredFields";
import { CreatePermissionTable_0_1_2_1723128633623 as createPermissionTable } from "infrastructure/database/migrations/0.1.2_CreatePermissionTable";
import { WriteMoreInfoToDB_0_2_9_1725692779638 as writeMoreToDB } from "infrastructure/database/migrations/0.2.9_WriteMoreInfoToDB";
import { ChangePermissionValidation_0_3_0_1729181792142 as changePermissionValidation } from "infrastructure/database/migrations/0.3.0_ChangePermissionValidation";
import { AddDeleteFilePermission_0_3_9_1730832569761 as addDeletePermission } from "infrastructure/database/migrations/0.3.9_AddDeleteFilePermission";
import { AddFileUsageTable_1731771003354 as addFileUsageTable } from "infrastructure/database/migrations/0.3.9_Part2AddFileUsageTable";
import { RenameAuthorAndAvatarId_1734207358779 as renameAuthorAndAvatarId } from "infrastructure/database/migrations/0.3.9_Part3RenameAuthorId";
import { UpdateUserAndFileAndAddDiscordId_0_8_2_1738571232826 as updateUserAndFileAndAddDiscordId } from "infrastructure/database/migrations/0.8.2_UpdateUserAndFileAndAddDiscordId";

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
  entities: [User, File, Permission, Package, FileUsage],
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
    updateUserAndFileAndAddDiscordId,
  ],
  poolSize: 25,
  migrationsRun: true,
  subscribers: [],
  namingStrategy: new SnakeNamingStrategy(),
});
