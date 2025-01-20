import { type Express } from "express";

import { ICrypto } from "types/ICrypto";
import { type Database } from "database/Database";
import { type Environment } from "config/Environment";
import { type Server as IOServer } from "socket.io";

export interface IApiContext {
  db: Database;
  app: Express;
  io: IOServer;
  env: Environment;
  crypto?: ICrypto;
}
