import dotenv from "dotenv";
import fs from "fs";
import path from "path";
import { LoggerOptions } from "typeorm";
import { Logger } from "../utils/Logger";
import { bold } from "colorette";

/**
 * Class of environment layer.
 * All `process.env` variables should be retrieved only trough this class.
 */
export class Environment {
  private static type: string;

  // DB vars
  public static DB_TYPE: string;
  public static DB_NAME: string;
  public static DB_USER: string;
  public static DB_PASS: string;
  public static DB_HOST: string;
  public static DB_PORT: number;
  public static DB_LOGGER: LoggerOptions;

  // JWT vars
  public static JWT_SECRET: string;
  public static JWT_SCHEME: string;
  public static JWT_REFRESH_SECRET: string;
  public static JWT_EXPIRES_IN: string;
  public static JWT_REFRESH_EXPIRES_IN: string;

  public static get ENV(): string {
    return this.type;
  }

  public static load(logging: boolean = true): void {
    if (fs.existsSync(path.resolve(process.cwd(), ".env"))) {
      dotenv.config();
    }

    this.loadEnv(logging);
  }

  private static getEnvVar(
    variable: string,
    defaultValue: any = undefined
  ): any {
    return process.env[variable] ?? defaultValue;
  }

  private static loadEnv(logging: boolean): void {
    if (!process?.env) {
      throw new Error("Cannot find Node.JS environment");
    }

    this.type = this.getEnvVar("ENV", "prod");

    const prod = this.type === "prod";

    if (prod && logging) {
      Logger.warn(bold("Running in production environment"));
    }

    this.DB_TYPE = this.getEnvVar("DB_TYPE", "pg");
    this.DB_NAME = this.getEnvVar("DB_NAME", prod ? undefined : "openQuester");
    this.DB_USER = this.getEnvVar("DB_USER", prod ? undefined : "root");
    this.DB_PASS = this.getEnvVar("DB_PASS");
    this.DB_HOST = this.getEnvVar("DB_HOST", prod ? undefined : "127.0.0.1");
    this.DB_PORT = this.getEnvVar("DB_PORT", 5432);
    this.DB_LOGGER = this.getEnvVar("DB_LOGGER", false);

    const missing = this.validateDB();
    if (missing.length > 0) {
      throw new Error(
        `Missing required DB variables in process environment: [${missing.join(
          ", "
        )}] `
      );
    }

    this.JWT_SECRET = this.getEnvVar("JWT_SECRET");
    this.JWT_REFRESH_SECRET = this.getEnvVar(
      "JWT_REFRESH_SECRET",
      this.JWT_SECRET
    );
    this.JWT_EXPIRES_IN = this.getEnvVar("JWT_EXPIRES_IN", "30m");
    this.JWT_REFRESH_EXPIRES_IN = this.getEnvVar(
      "JWT_REFRESH_EXPIRES_IN",
      "30 days"
    );
    this.JWT_SCHEME = this.getEnvVar("JWT_SCHEME", "Bearer");

    const missingJWT = this.validateJWT();
    if (missingJWT.length > 0) {
      throw new Error(
        `Missing required JWT variable in .env file: [${missingJWT.join(", ")}]`
      );
    }
  }

  private static validateJWT() {
    const requiredVars: { [key: string]: any } = {
      JWT_SECRET: this.JWT_SECRET,
      JWT_REFRESH_SECRET: this.JWT_REFRESH_SECRET,
      JWT_EXPIRES_IN: this.JWT_EXPIRES_IN,
      JWT_REFRESH_EXPIRES_IN: this.JWT_REFRESH_EXPIRES_IN,
      JWT_SCHEME: this.JWT_SCHEME,
    };

    const missing: string[] = [];

    for (const [key, value] of Object.entries(requiredVars)) {
      if (value === undefined || value === null) {
        missing.push(key);
      }
    }

    return missing;
  }

  private static validateDB() {
    const requiredVars: { [key: string]: any } = {
      DB_TYPE: this.DB_TYPE,
      DB_NAME: this.DB_NAME,
      DB_USER: this.DB_USER,
      DB_PASS: this.DB_PASS,
      DB_HOST: this.DB_HOST,
      DB_PORT: this.DB_PORT,
    };

    const missing: string[] = [];

    for (const [key, value] of Object.entries(requiredVars)) {
      if (value === undefined || value === null) {
        missing.push(key);
      }
    }

    return missing;
  }
}
