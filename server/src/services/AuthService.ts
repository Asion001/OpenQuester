import { User } from "../database/models/User";

import { JWTResponse } from "../types/jwt/jwt";
import { Crypto } from "../interfaces/Crypto";
import { ILoginUser } from "../interfaces/user/ILoginUser";

import { JWTUtils } from "../utils/JWTUtils";
import { CryptoUtils } from "../utils/CryptoUtils";
import { IRegisterUser } from "../interfaces/user/IRegisterUser";
import { type Database } from "../database/Database";
import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";

/**
 * Handles all business logic of user authorization
 */
export class AuthService {
  public async register(
    db: Database,
    data: IRegisterUser,
    crypto: Crypto
  ): Promise<JWTResponse> {
    const user = await User.create(db, data, crypto);

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);
    return {
      access_token,
      refresh_token,
    };
  }

  public async login(
    db: Database,
    data: ILoginUser,
    crypto: Crypto
  ): Promise<JWTResponse> {
    const user = await User.login(db, data);

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    if (!(await CryptoUtils.compare(data.password!, user.password!, crypto))) {
      throw new ClientError(ClientResponse.WRONG_PASSWORD);
    }

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);

    return {
      access_token,
      refresh_token,
    };
  }
}
