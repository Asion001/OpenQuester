import { type Request } from "express";

import { type ApiContext } from "./context/ApiContext";

import { JWTResponse } from "../types/jwt/jwt";
import { JWTUtils } from "../utils/JWTUtils";
import { CryptoUtils } from "../utils/CryptoUtils";
import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";
import { UserRepository } from "../database/repositories/UserRepository";
import { TranslateService as ts } from "./text/TranslateService";

/**
 * Handles all business logic of user authorization
 */
export class AuthService {
  public async register(ctx: ApiContext, req: Request): Promise<JWTResponse> {
    const repository = UserRepository.getRepository(ctx.db);
    const user = await repository.create(req.body, ctx.crypto);

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);
    return {
      access_token,
      refresh_token,
    };
  }

  public async login(ctx: ApiContext, req: Request): Promise<JWTResponse> {
    const repository = UserRepository.getRepository(ctx.db);
    const data = req.body;
    const lang = ts.parseHeader(req.headers["accept-language"]);
    const user = await repository.login(data);

    if (!user) {
      throw new ClientError(ts.translate(ClientResponse.USER_NOT_FOUND, lang));
    }

    if (
      !(await CryptoUtils.compare(data.password!, user.password!, ctx.crypto))
    ) {
      throw new ClientError(ts.translate(ClientResponse.WRONG_PASSWORD, lang));
    }

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);

    return {
      access_token,
      refresh_token,
    };
  }
}
