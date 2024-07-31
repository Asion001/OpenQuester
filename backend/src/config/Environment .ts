const ENV_TYPES = ["local", "prod"];

type envVar = string | undefined;

/**
 * Class of environment layer.
 * All `process.env` variables should be retrieved only trough this class.
 */
export class Environment {
  private static type: envVar;

  // DB vars
  public static DB_TYPE: envVar;
  public static DB_NAME: envVar;
  public static DB_USER: envVar;
  public static DB_PASS: envVar;
  public static DB_HOST: envVar;
  public static DB_PORT: envVar;

  public static get ENV(): envVar {
    return this.type;
  }

  public static load(): void {
    this.loadEnv();
  }

  private static getEnvVar(variable: string, defaultValue?: string): envVar {
    if (!process?.env) {
      return;
    }

    return process.env[variable] || defaultValue;
  }

  private static loadEnv(): void {
    this.type = this.getEnvVar("ENV");

    if (ENV_TYPES.indexOf(String(this.type)) === -1) {
      throw new Error(
        `Wrong ENV type, only '${ENV_TYPES.join(", ")}' available, got: ${
          this.type
        }`
      );
    }

    this.DB_TYPE = this.getEnvVar("DB_TYPE", "pg");
    this.DB_NAME = this.getEnvVar("DB_NAME", "openQuester");
    this.DB_USER = this.getEnvVar("DB_USER", "root");
    this.DB_PASS = this.getEnvVar("DB_PASS");
    this.DB_HOST = this.getEnvVar("DB_HOST", "127.0.0.1");
    this.DB_PORT = this.getEnvVar("DB_PORT", "5432");
  }
}
