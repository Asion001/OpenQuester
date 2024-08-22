import { Database } from "../database/Database";
import express from "express";
import { Crypto } from "../types/Crypto";

export interface IApiContext {
  db: Database;
  app: express.Express;
  crypto?: Crypto;
}
