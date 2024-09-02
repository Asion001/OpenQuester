import dotenv from "dotenv";
import fs from "fs";
import path from "path";
import { bold } from "colorette";
import { type LoggerOptions } from "typeorm";

import { Logger } from "../utils/Logger";
import { JWTUtils } from "../utils/JWTUtils";
import { ValueUtils } from "../utils/ValueUtils";
import { envVar } from "../types/env/env";

const ENV_TYPES = ["local", "prod", "test"];

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
  public static JWT_TOKEN_OPTIONS: {
    secret: string;
    refreshSecret: string;
    expiresIn: string;
    refreshExpiresIn: string;
  };

  // Workers
  public static WORKERS_COUNT: number;

  /** Get environment type */
  public static get ENV(): string {
    return this.type;
  }

  /**
   * Load all environment variables, if not loaded already
   * @param force Specify if you want to load environment even if it's loaded already
   */
  public static load(force: boolean = false): void {
    if (this.type && !force) {
      return;
    }

    // Load variables from file only, if file exists
    // In other case variables should provided directly in environment e.g. `$ export VAR="value"`
    if (fs.existsSync(path.resolve(process.cwd(), ".env"))) {
      dotenv.config();
    }

    // Do not load variables in test environment. It should be mocked for testing
    if (process?.env["ENV"] === "test") {
      Logger.error("Running in `test` environment!!");
      return;
    }

    this.loadEnv();
  }

  /**
   * Get variable from `process.env` or return default value
   *
   * Performs type checking
   */
  public static getEnvVar(
    variable: string,
    type: envVar | envVar[],
    defaultValue: unknown = undefined
  ): any {
    let success = false;
    let value = process.env[variable] ?? defaultValue;
    value = value === "undefined" ? undefined : value;

    if (ValueUtils.isArray(type)) {
      type.forEach((t) => {
        if (ValueUtils.checkPrimitiveType(value, t)) {
          success = true;
          type = t;
        }
      });
    } else {
      if (ValueUtils.checkPrimitiveType(value, type)) success = true;
    }

    if (success) {
      switch (type) {
        case "boolean":
          return ValueUtils.parseBoolean(value);
        case "number":
          return Number(value);
        case "string":
          return String(value);
      }
    } else {
      throw new Error(
        `Variable ${variable} is wrong type, ${type} expected but got variable ${value} of type ${typeof variable}`
      );
    }
  }

  /**
   * Environment variables loading logic and validation
   */
  private static loadEnv(): void {
    if (!process?.env) {
      throw new Error("Cannot find Node.JS environment");
    }

    this.type = this.getEnvVar("ENV", "string", "prod");

    if (!ENV_TYPES.includes(this.type)) {
      throw new Error(
        `Wrong ENV type, only [${ENV_TYPES.join(", ")}] allowed, but got '${
          this.type
        }'`
      );
    }

    const prod = this.type === "prod";

    if (prod) {
      Logger.warn(bold("Running in production environment"));
    }

    if (this.type === "local") {
      Logger.info("Running in local environment");
    }

    this.loadDB(this.type);
    this.loadJWT();
    this.loadWorkers();
  }

  private static loadWorkers() {
    this.WORKERS_COUNT = Number(this.getEnvVar("WORKERS_COUNT", "number", 2));

    if (this.WORKERS_COUNT < 1) {
      this.WORKERS_COUNT = 2;
    }
  }

  private static loadJWT() {
    this.JWT_SECRET = JWTUtils.getSecret();
    this.JWT_REFRESH_SECRET = this.getEnvVar(
      "JWT_REFRESH_SECRET",
      ["string", "number"],
      this.JWT_SECRET
    );
    this.JWT_EXPIRES_IN = this.getEnvVar(
      "JWT_EXPIRES_IN",
      ["string", "number"],
      "30m"
    );
    this.JWT_REFRESH_EXPIRES_IN = this.getEnvVar(
      "JWT_REFRESH_EXPIRES_IN",
      ["string", "number"],
      "30 days"
    );
    this.JWT_SCHEME = this.getEnvVar("JWT_SCHEME", "string", "Bearer");

    this.JWT_TOKEN_OPTIONS = {
      secret: this.JWT_SECRET,
      expiresIn: this.JWT_EXPIRES_IN,
      refreshSecret: this.JWT_REFRESH_SECRET,
      refreshExpiresIn: this.JWT_REFRESH_EXPIRES_IN,
    };
  }

  private static loadDB(env: string) {
    const prod = env === "prod";
    this.DB_TYPE = this.getEnvVar("DB_TYPE", "string", "pg");
    this.DB_NAME = this.getEnvVar(
      "DB_NAME",
      "string",
      prod ? undefined : "openQuester"
    );
    this.DB_USER = this.getEnvVar(
      "DB_USER",
      "string",
      prod ? undefined : "root"
    );
    this.DB_PASS = this.getEnvVar("DB_PASS", "string");
    this.DB_HOST = this.getEnvVar(
      "DB_HOST",
      "string",
      prod ? undefined : "127.0.0.1"
    );
    this.DB_PORT = this.getEnvVar("DB_PORT", "number", 5432);
    this.DB_LOGGER = this.getEnvVar("DB_LOGGER", ["boolean", "string"], false);
  }
}
