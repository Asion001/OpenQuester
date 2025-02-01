import { type ApiContext } from "services/context/ApiContext";

import { JWTResponse } from "types/jwt/jwt";
import { JWTUtils } from "utils/JWTUtils";
import { CryptoUtils } from "utils/CryptoUtils";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";
import { UserRepository } from "database/repositories/UserRepository";
import { ILoginUser } from "types/user/ILoginUser";

/**
 * Handles all business logic of user authorization
 */
export class AuthService {
  public async login(ctx: ApiContext, data: ILoginUser): Promise<JWTResponse> {
    const repository = UserRepository.getRepository(ctx.db);
    const user = await repository.login(data);

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    if (
      !(await CryptoUtils.compare(data.password!, user.password!, ctx.crypto))
    ) {
      throw new ClientError(ClientResponse.WRONG_PASSWORD);
    }

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);

    return {
      access_token,
      refresh_token,
    };
  }
}
