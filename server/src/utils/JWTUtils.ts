import crypto from "crypto";
import fs from "fs";
import path from "path";
import * as jwt from "jsonwebtoken";
import { type Request } from "express";

import { Environment } from "../config/Environment";
import {
  JWTPayload,
  JWTResponse,
  JWTSecret,
  TokenOptions,
} from "../types/jwt/jwt";
import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";
import { TranslateService as ts } from "../services/text/TranslateService";

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

    const data: JWTSecret = {
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

    const data: JWTSecret = JSON.parse(file);
    return data.jwt_secret;
  }

  /**
   * Returns token payload
   */
  public static getTokenPayload(authorizationHeader: string | undefined) {
    const token = authorizationHeader?.split(" ")[1] as string;
    const env = Environment.instance;

    return jwt.verify(token, env.JWT_SECRET) as JWTPayload;
  }

  /**
   * Generate tokens based on userId as payload, and on given / environment secrets
   */
  public static generateTokens(
    userId: number,
    options?: TokenOptions
  ): JWTResponse {
    const env = Environment.instance;
    const tokenOptions: TokenOptions = options ?? env.JWT_TOKEN_OPTIONS;

    const access_token = jwt.sign({ id: userId }, tokenOptions.secret, {
      expiresIn: tokenOptions.expiresIn,
    });
    const refresh_token = jwt.sign({ id: userId }, tokenOptions.refreshSecret, {
      expiresIn: tokenOptions.refreshExpiresIn,
    });

    return { access_token, refresh_token };
  }

  /**
   * Refreshes user tokens by checking given refresh_token
   */
  public static refresh(req: Request, options?: TokenOptions): JWTResponse {
    try {
      const env = Environment.instance;
      const decode = jwt.verify(
        req.body.refresh_token,
        options?.refreshSecret ?? env.JWT_REFRESH_SECRET
      );
      const { access_token, refresh_token } = JWTUtils.generateTokens(
        (decode as JWTPayload).id,
        options
      );
      return {
        access_token,
        refresh_token,
      };
    } catch {
      const lang = ts.parseHeader(req.headers["accept-language"]);
      throw new ClientError(ts.translate(ClientResponse.INVALID_REFRESH, lang));
    }
  }
}
