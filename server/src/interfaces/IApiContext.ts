import { Database } from "../database/Database";
import express from "express";
import { Crypto } from "./Crypto";
import { FileContext } from "../services/context/FileContext";

export interface IApiContext {
  db: Database;
  app: express.Express;
  crypto: Crypto;
  fileContext: FileContext;
}
