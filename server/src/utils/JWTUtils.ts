import crypto from "crypto";
import fs from "fs";
import path from "path";

const WRITE_PATH = path.resolve("../", process.cwd(), "storage/");
const FILE_PATH = path.resolve(WRITE_PATH, ".secret.json");
type jwtSecret = {
  jwt_secret: string;
};

export class JWTUtils {
  /**
   * Generate and return secret for JWT token
   * @param length secret length
   * @returns secret for JWT token
   */
  public static generateSecret(length = 512): string {
    const secret = crypto
      .randomBytes(length)
      .toString("base64")
      .slice(0, length);

    const data: jwtSecret = {
      jwt_secret: secret,
    };

    if (!fs.existsSync(WRITE_PATH)) {
      fs.mkdirSync(WRITE_PATH, { recursive: true });
    }
    fs.writeFileSync(FILE_PATH, JSON.stringify(data, null, 2));
    return secret;
  }

  public static getSecret(): string {
    if (!fs.existsSync(FILE_PATH)) {
      return this.generateSecret();
    }
    const file = fs.readFileSync(FILE_PATH, "utf-8");
    const data: jwtSecret = JSON.parse(file);
    return data.jwt_secret;
  }
}
