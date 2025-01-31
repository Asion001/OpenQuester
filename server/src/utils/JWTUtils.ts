import * as jwt from "jsonwebtoken";
import { type Request } from "express";

import { Environment } from "config/Environment";
import { JWTPayload, JWTResponse, TokenOptions } from "types/jwt/jwt";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";

export class JWTUtils {
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
      throw new ClientError(ClientResponse.INVALID_REFRESH);
    }
  }
}
