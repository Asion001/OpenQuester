import "reflect-metadata";

import { Environment } from "../config/Environment";
import { Logger } from "../utils/Logger";

// Models
import { User } from "./models/User";
import { DataSource } from "typeorm";
import { File } from "./models/File";
import { Group } from "./models/Group";
import { UserGroups } from "./models/UsersGroup";

// Migrations imports
import { CreateUserAndFileTables_1_1_1722683756069 as createUserAndFileTables } from "./migrations/CreateUserAndFileTables_1_1_1722683756069";
import { UpdateUserModelFields_1_11_1723107959823 as updateUserModelFields } from "./migrations/UpdateUserModelFields_1_11_1723107959823";
import { CreateGroupTable_1_2_1723128633623 as createGroupTable } from "./migrations/CreateGroupTable_1_2_1723128633623";
import { UpdateUserRequiredFields_1_21_1723204474011 as updateUserRequiredFields } from "./migrations/UpdateUserRequiredFields_1_21_1723204474011";

try {
  Environment.load(false);
} catch (err: any) {
  Logger.error("Failed to load environment variables, closing...");
  Logger.error(`Error message: ${err.message}`);
  // Bravely exit from process since it's migration process created by TypeORM
  process.exit(0);
}

/** TypeORM's data source. Used for all DB operations */
export const AppDataSource = new DataSource({
  type: "postgres",
  host: Environment.DB_HOST,
  port: Number(Environment.DB_PORT),
  username: Environment.DB_USER,
  password: Environment.DB_PASS,
  database: Environment.DB_NAME,
  synchronize: false,
  logging: Environment.DB_LOGGER,
  entities: [User, File, Group, UserGroups],
  migrations: [
    createUserAndFileTables,
    updateUserModelFields,
    createGroupTable,
    updateUserRequiredFields,
  ],
  migrationsRun: true,
  subscribers: [],
});
