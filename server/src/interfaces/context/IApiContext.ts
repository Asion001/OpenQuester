import { type Express } from "express";

import { ICrypto } from "../ICrypto";
import { type Database } from "../../database/Database";
import { type Environment } from "../../config/Environment";

export interface IApiContext {
  db: Database;
  app: Express;
  env: Environment;
  crypto?: ICrypto;
}
