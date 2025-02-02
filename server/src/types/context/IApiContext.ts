import { type Express } from "express";

import { ICrypto } from "types/ICrypto";
import { type Database } from "database/Database";
import { type Environment } from "config/Environment";
import { type Server as IOServer } from "socket.io";
import { type ServerServices } from "services/ServerServices";

export interface IApiContext {
  db: Database;
  app: Express;
  io: IOServer;
  env: Environment;
  serverServices: ServerServices;
  crypto?: ICrypto;
}
