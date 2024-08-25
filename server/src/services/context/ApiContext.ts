import { Database } from "../../database/Database";
import { IApiContext } from "../../interfaces/IApiContext";
import express from "express";
import { Crypto } from "../../interfaces/Crypto";

export class ApiContext {
  public db!: Database;
  public app!: express.Express;
  public crypto: Crypto;

  constructor(data: IApiContext) {
    this.db = data.db;
    this.app = data.app;
    this.crypto = data.crypto;
  }
}
