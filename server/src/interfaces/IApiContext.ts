import { type Express } from "express";

import { Crypto } from "./Crypto";
import { fileContext } from "../types/file/fileContext";
import { type Database } from "../database/Database";
import { type Environment } from "../config/Environment";

export interface IApiContext {
  db: Database;
  app: Express;
  env: Environment;
  fileContext: fileContext;
  crypto?: Crypto;
}
