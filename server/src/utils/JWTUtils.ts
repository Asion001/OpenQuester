import crypto from "crypto";
import fs from "fs";
import path from "path";

const WRITE_PATH = path.resolve(process.cwd(), "storage/");

type jwtOptions = {
  length: number;
  cryptoInstance: typeof crypto;
  writePath: string;
};

const defaultOptions: jwtOptions = {
  length: 512,
  cryptoInstance: crypto,
  writePath: WRITE_PATH,
};

type jwtSecret = {
  jwt_secret: string;
};

export class JWTUtils {
  /**
   * Generate and return secret for JWT token
   * @param length secret length
   * @returns secret for JWT token
   */
  public static generateSecret(options: jwtOptions = defaultOptions): string {
    const { length, cryptoInstance, writePath } = options;

    const filePath = path.resolve(writePath, ".secret.json");

    const secret = cryptoInstance
      .randomBytes(length)
      .toString("base64")
      .slice(0, length);

    const data: jwtSecret = {
      jwt_secret: secret,
    };

    if (!fs.existsSync(writePath)) {
      fs.mkdirSync(writePath, { recursive: true });
    }
    fs.writeFileSync(filePath, JSON.stringify(data, null, 2));
    return secret;
  }

  /**
   * Retrieves JWT secret from file, or create and write it if file is empty or not exists
   */
  public static getSecret(options?: jwtOptions): string {
    const filePath = path.resolve(
      options?.writePath ?? WRITE_PATH,
      ".secret.json"
    );
    if (!fs.existsSync(filePath)) {
      return this.generateSecret(options);
    }

    const file = fs.readFileSync(filePath, "utf-8");
    if (!file.length) {
      fs.rmSync(filePath);
      return this.generateSecret(options);
    }

    const data: jwtSecret = JSON.parse(file);
    return data.jwt_secret;
  }
}
