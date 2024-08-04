import dotenv from "dotenv";
import fs from 'fs';
import path from 'path';
import { LoggerOptions } from "typeorm";

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

  public static get ENV(): string {
    return this.type;
  }

  public static load(): void {
    // Check if any .env file exists and then configure dotenv
    var isDotEnvExist = fs.existsSync(path.resolve(__dirname, '.env'));

    if (isDotEnvExist) {
      dotenv.config();
    } else
      // Dont send warning on prod environment
      if (process.env['ENV'] !== 'prod') {
        console.warn('No .env files found. Environment variables are not loaded.');
      }

    this.loadEnv();
  }

  private static getEnvVar(variable: string, defaultValue: any = ""): any {
    return process.env[variable] || defaultValue;
  }

  private static loadEnv(): void {
    if (!process?.env) {
      throw new Error("Cannot find Node.JS environment");
    }

    this.type = this.getEnvVar("ENV");

    if (ENV_TYPES.indexOf(String(this.type)) === -1) {
      throw new Error(
        `Wrong ENV type, only '${ENV_TYPES.join(", ")}' available, got: ${this.type
        }`
      );
    }
    const prod = this.type === "prod";

    this.DB_TYPE = this.getEnvVar("DB_TYPE", prod ? "" : "pg");
    this.DB_NAME = this.getEnvVar("DB_NAME", prod ? "" : "openQuester");
    this.DB_USER = this.getEnvVar("DB_USER", prod ? "" : "root");
    this.DB_PASS = this.getEnvVar("DB_PASS");
    this.DB_HOST = this.getEnvVar("DB_HOST", prod ? "" : "127.0.0.1");
    this.DB_PORT = this.getEnvVar("DB_PORT", "5432");
    this.DB_LOGGER = this.getEnvVar("DB_LOGGER", false);

    const missing = this.validateDB();
    if (missing.length > 0) {
      throw new Error(
        `Missing required DB variable in .env file: [${missing.join(", ")}] `
      );
    }
  }

  private static validateDB() {
    const missing = [];

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
