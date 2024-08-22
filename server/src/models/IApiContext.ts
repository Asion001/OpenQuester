import { Database } from "../database/Database";
import { Express } from "express";

export interface IApiContext {
  db: Database;
  app: Express;
}
