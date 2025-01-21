import dotenv from "dotenv";
import fs from "fs";
import path from "path";
import { bold } from "colorette";
import { type LoggerOptions } from "typeorm";

import { Logger } from "utils/Logger";
import { JWTUtils } from "utils/JWTUtils";
import { ValueUtils } from "utils/ValueUtils";
import { EnvVar } from "types/env/env";
import { ServerResponse } from "enums/ServerResponse";
import { ServerError } from "error/ServerError";
import { LogLevel } from "types/log/log";
import { TemplateUtils } from "utils/TemplateUtils";

const ENV_TYPES = ["local", "prod", "test"];
const ENV_PREFIX = "[ENV]: ";

/**
 * Class of environment layer.
 * All `process.env` variables should be retrieved only trough this class.
 */
export class Environment {
  private _type!: string;
  /** Used for singleton implementation */
  private static _instance: Environment | undefined = undefined;

  // DB vars
  public DB_TYPE!: string;
  public DB_NAME!: string;
  public DB_USER!: string;
  public DB_PASS!: string;
  public DB_HOST!: string;
  public DB_PORT!: number;
  public DB_LOGGER!: LoggerOptions;

  // Redis
  public REDIS_USERNAME!: string;
  public REDIS_PASSWORD!: string;
  public REDIS_HOST!: string;
  public REDIS_PORT!: number;
  public REDIS_DB_NUMBER!: number;

  // JWT vars
  public JWT_SECRET!: string;
  public JWT_SCHEME!: string;
  public JWT_REFRESH_SECRET!: string;
  public JWT_EXPIRES_IN!: string;
  public JWT_REFRESH_EXPIRES_IN!: string;
  public JWT_TOKEN_OPTIONS!: {
    secret: string;
    refreshSecret: string;
    expiresIn: string;
    refreshExpiresIn: string;
  };

  // Logs
  public LOG_LEVEL!: LogLevel;

  private constructor() {
    //
  }

  public static get instance() {
    if (!this._instance) {
      this._instance = new Environment();
    }

    return this._instance;
  }

  /** Get environment type */
  public get ENV(): string {
    return this._type;
  }

  /**
   * Load all environment variables, if not loaded already
   * @param force Specify if you want to load environment even if it's loaded already
   */
  public load(force: boolean = false): void {
    if (this._type && !force) {
      return;
    }

    // Load variables from file only, if file exists
    // In other case variables should provided directly in environment e.g. `$ export VAR="value"`
    if (fs.existsSync(path.resolve(process.cwd(), ".env"))) {
      dotenv.config();
    }

    // Do not load variables in test environment. It should be mocked for testing
    if (process?.env["ENV"] === "test") {
      Logger.error("Running in `test` environment!!", ENV_PREFIX);
      return;
    }

    this.loadEnv();
  }

  /**
   * Get variable from `process.env` or return default value
   *
   * Performs type checking
   */
  public getEnvVar(
    variable: string,
    type: EnvVar | EnvVar[],
    defaultValue: unknown = undefined,
    optional: boolean = false
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
    } else if (!optional) {
      throw new ServerError(
        TemplateUtils.text(ServerResponse.ENV_VAR_WRONG_TYPE, {
          var: variable,
          expectedType: String(type),
          value: String(value),
          type: typeof variable,
        })
      );
    }
  }

  /**
   * Environment variables loading logic and validation
   */
  private loadEnv(): void {
    if (!process?.env) {
      throw new ServerError(ServerResponse.NO_ENV);
    }

    this._type = this.getEnvVar("ENV", "string", "prod");

    if (!ENV_TYPES.includes(this._type)) {
      throw new ServerError(
        TemplateUtils.text(ServerResponse.INVALID_ENV_TYPE, {
          types: ENV_TYPES.join(", "),
          type: this._type,
        })
      );
    }

    const prod = this._type === "prod";

    if (prod) {
      Logger.warn(bold("Running in production environment"), ENV_PREFIX);
    }

    if (this._type === "local") {
      Logger.info("Running in local environment", ENV_PREFIX);
    }

    this.loadDB();
    this.loadJWT();

    this.LOG_LEVEL = this.getEnvVar("LOG_LEVEL", "string", "info");

    this.loadRedis();
  }

  private loadRedis() {
    this.REDIS_USERNAME = this.getEnvVar("REDIS_USERNAME", "string", "", true);
    this.REDIS_PASSWORD = this.getEnvVar("REDIS_PASSWORD", "string", "", true);
    this.REDIS_HOST = this.getEnvVar("REDIS_HOST", "string", "localhost");
    this.REDIS_PORT = this.getEnvVar("REDIS_PORT", "number", 6379);
    this.REDIS_DB_NUMBER = this.getEnvVar("REDIS_DB_NUMBER", "number", 0);
  }

  private loadJWT() {
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

  private loadDB() {
    const prod = this._type === "prod";
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
