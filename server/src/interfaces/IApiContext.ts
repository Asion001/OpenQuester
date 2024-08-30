import { type Express } from "express";

import { Database } from "../database/Database";
import { Crypto } from "./Crypto";

export interface IApiContext {
  db: Database;
  app: Express;
  crypto: Crypto;
}
