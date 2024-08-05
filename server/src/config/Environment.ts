import dotenv from "dotenv";
import fs from "fs";
import path from "path";
import { LoggerOptions } from "typeorm";
import { Logger } from "../utils/Logger";

const ENV_TYPES = ["local", "prod"];

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
  public static DB_PORT: string;
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

  public static load(): void {
    if (fs.existsSync(path.resolve(process.cwd(), ".env"))) {
      dotenv.config();
    } else if (process.env["ENV"] !== "prod") {
      Logger.warn("No .env files found. Environment variables are not loaded.");
    }

    this.loadEnv();
  }

  private static getEnvVar(variable: string, defaultValue: any = ""): any {
    return process.env[variable] ?? defaultValue;
  }

  private static loadEnv(): void {
    if (!process?.env) {
      throw new Error("Cannot find Node.JS environment");
    }

    this.type = this.getEnvVar("ENV", "prod");

    if (ENV_TYPES.indexOf(String(this.type)) === -1) {
      throw new Error(
        `Wrong ENV type, only '${ENV_TYPES.join(", ")}' available, got: ${this.type
        }`
      );
    }
    const prod = this.type === "prod";

    this.DB_TYPE = this.getEnvVar("DB_TYPE", "pg");
    this.DB_NAME = this.getEnvVar("DB_NAME", prod ? undefined : "openQuester");
    this.DB_USER = this.getEnvVar("DB_USER", prod ? undefined : "root");
    this.DB_PASS = this.getEnvVar("DB_PASS");
    this.DB_HOST = this.getEnvVar("DB_HOST", prod ? undefined : "127.0.0.1");
    this.DB_PORT = this.getEnvVar("DB_PORT", "5432");
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
    this.JWT_REFRESH_SECRET = this.getEnvVar("JWT_REFRESH_SECRET", this.JWT_SECRET);
    this.JWT_EXPIRES_IN = this.getEnvVar("JWT_EXPIRES_IN", "30min");
    this.JWT_REFRESH_EXPIRES_IN = this.getEnvVar("JWT_REFRESH_EXPIRES_IN", "30d");
    this.JWT_SCHEME = this.getEnvVar("JWT_SCHEME", "Barier");

    const missingJWT = this.validateJWT();
    if (missingJWT.length > 0) {
      throw new Error(
        `Missing required JWT variable in .env file: [${missingJWT.join(", ")}]`
      );
    }
  }

  private static validateJWT() {
    const missing: string[] = [];

    if (!this.JWT_SECRET) {
      missing.push("JWT_SECRET");
    }

    if (!this.JWT_REFRESH_SECRET) {
      missing.push("JWT_REFRESH_SECRET");
    }

    if (!this.JWT_EXPIRES_IN) {
      missing.push("JWT_EXPIRES_IN");
    }

    if (!this.JWT_REFRESH_EXPIRES_IN) {
      missing.push("JWT_REFRESH_EXPIRES_IN");
    }

    if (!this.JWT_SCHEME) {
      missing.push("JWT_SCHEME");
    }

    return missing;
  }

  private static validateDB() {
    const missing: string[] = [];

    if (!this.DB_TYPE) {
      missing.push("DB_TYPE");
    }

    if (!this.DB_NAME) {
      missing.push("DB_NAME");
    }

    if (!this.DB_USER) {
      missing.push("DB_USER");
    }

    if (!this.DB_PASS) {
      missing.push("DB_PASS");
    }

    if (!this.DB_HOST) {
      missing.push("DB_HOST");
    }

    if (!this.DB_PORT) {
      missing.push("DB_PORT");
    }

    return missing;
  }
}
