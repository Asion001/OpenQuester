import { type Express } from "express";
import { type Server as IOServer } from "socket.io";

import { type Environment } from "config/Environment";
import { type Database } from "database/Database";
import { type ServerServices } from "services/ServerServices";

export interface ApiContextDTO {
  db: Database;
  app: Express;
  io: IOServer;
  env: Environment;
  serverServices: ServerServices;
}
