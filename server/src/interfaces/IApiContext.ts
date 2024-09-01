import { type Express } from "express";

import { Crypto } from "./Crypto";
import { type Database } from "../database/Database";
import { type Environment } from "../config/Environment";

export interface IApiContext {
  db: Database;
  app: Express;
  env: Environment;
  crypto?: Crypto;
}
