import dotenv from "dotenv";
import fs from "fs";
import path from "path";
import { bold } from "colorette";
import { type LoggerOptions } from "typeorm";
import type Redis from "ioredis";

import { Logger } from "utils/Logger";
import { ValueUtils } from "utils/ValueUtils";
import { EnvVar } from "types/env/env";
import { ServerResponse } from "enums/ServerResponse";
import { ServerError } from "error/ServerError";
import { LogLevel } from "types/log/log";
import { TemplateUtils } from "utils/TemplateUtils";
import { SESSION_SECRET_REDIS_KEY } from "constants/session";
import { SessionUtils } from "utils/SessionUtils";

export enum ENV_TYPES {
  LOCAL = "local",
  PROD = "prod",
  TEST = "test",
}
const ENV_PREFIX = "[ENV]: ";

/**
 * Class of environment layer.
 * All `process.env` variables should be retrieved only trough this class.
 */
export class Environment {
  private _type!: ENV_TYPES;
  /** Used for singleton implementation */
  private static _instance: Environment | undefined = undefined;

  // URLs
  public CLIENT_URL!: string;
  public SERVER_URL!: string;

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

  // Session
  public SESSION_SECRET!: string;
  public SESSION_MAX_AGE!: number;

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

  public async loadSessionConfig(length: number, redisClient: Redis) {
    const secret = await redisClient.get(SESSION_SECRET_REDIS_KEY);
    if (secret) {
      this.SESSION_SECRET = secret;
    } else {
      this.SESSION_SECRET = await SessionUtils.generateSecret(length);
      await redisClient.set(SESSION_SECRET_REDIS_KEY, this.SESSION_SECRET);
    }

    this.SESSION_MAX_AGE = this.getEnvVar(
      "SESSION_MAX_AGE",
      "number",
      24 * 30 * 24 * 60 * 60 * 1000 // 2 years
    );
  }

  /**
   * Environment variables loading logic and validation
   */
  private loadEnv(): void {
    if (!process?.env) {
      throw new ServerError(ServerResponse.NO_ENV);
    }

    this._type = this.getEnvVar("ENV", "string", "prod");

    const envTypes = [...Object.values(ENV_TYPES)];
    if (!envTypes.includes(this._type)) {
      throw new ServerError(
        TemplateUtils.text(ServerResponse.INVALID_ENV_TYPE, {
          types: envTypes.join(", "),
          type: this._type,
        })
      );
    }

    switch (this._type) {
      case "prod":
        Logger.warn(bold("Running in production environment"), ENV_PREFIX);
        break;
      case "local":
        Logger.info("Running in local environment", ENV_PREFIX);
        break;
    }

    this.loadDB();

    this.LOG_LEVEL = this.getEnvVar("LOG_LEVEL", "string", "info");

    this.loadRedis();

    this.CLIENT_URL = this.getEnvVar(
      "CLIENT_URL",
      "string",
      "http://localhost:3000"
    );
    this.SERVER_URL = this.getEnvVar(
      "SERVER_URL",
      "string",
      "http://localhost:3000"
    );
  }

  private loadRedis() {
    this.REDIS_USERNAME = this.getEnvVar("REDIS_USERNAME", "string", "", true);
    this.REDIS_PASSWORD = this.getEnvVar("REDIS_PASSWORD", "string", "", true);
    this.REDIS_HOST = this.getEnvVar("REDIS_HOST", "string", "localhost");
    this.REDIS_PORT = this.getEnvVar("REDIS_PORT", "number", 6379);
    this.REDIS_DB_NUMBER = this.getEnvVar("REDIS_DB_NUMBER", "number", 0);
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
