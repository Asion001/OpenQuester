import { type Express } from "express";

import { ICrypto } from "../ICrypto";
import { type Database } from "../../database/Database";
import { type Environment } from "../../config/Environment";
import { type ServerServices } from "../../services/ServerServices";

export interface IApiContext {
  db: Database;
  app: Express;
  env: Environment;
  crypto?: ICrypto;
  serverServices: ServerServices;
}
