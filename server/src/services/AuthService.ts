import jwt from "jsonwebtoken";

import { Environment } from "../config/Environment";

import { Database } from "../database/Database";
import { File } from "../database/models/File";
import { Group } from "../database/models/Group";
import { User } from "../database/models/User";
import { IUser } from "../models/IUser";
import { EUserGroups } from "../enums/EUserGroups";

import { JWTPayload, JWTResponse, TokenOptions } from "../types/jwt/jwt";
import { Crypto } from "../types/Crypto";

import { ValueUtils } from "../utils/ValueUtils";
import { IApiContext } from "../models/IApiContext";

/**
 * Handles all business logic of user authorization
 */
export class AuthService {
  public static async register(
    ctx: IApiContext,
    data: IUser,
    crypto: Crypto
  ): Promise<JWTResponse> {
    if (!this.validateRegisterRequest(data)) {
      throw new Error(
        "Provide all required fields: 'email', 'name' and 'password'"
      );
    }
    const repository = ctx.db.getRepository(User);

    const user = new User();

    // Set all data to new user instance
    user.name = data.name;
    user.email = data.email;
    user.password = await crypto.hash(data.password as string, 10);

    user.birthday = data.birthday
      ? ValueUtils.getBirthday(data.birthday)
      : undefined;

    user.avatar = data.avatar as File;
    user.groups = await this.defaultGroups(ctx.db);

    user.created_at = new Date();
    user.updated_at = new Date();

    // Save new user
    await repository.save(user);

    const { access_token, refresh_token } = this.generateTokens(user.id);
    return {
      access_token: access_token,
      refresh_token: refresh_token,
    };
  }

  public static async login(
    ctx: IApiContext,
    data: IUser,
    crypto: Crypto
  ): Promise<JWTResponse> {
    if (!this.validateLoginRequest(data)) {
      throw new Error(
        "Provide all required fields: 'email' or 'name' and 'password'"
      );
    }

    const repository = ctx.db.getRepository(User);

    const user = await repository
      .createQueryBuilder("user")
      .where("user.name = :name", { name: data.name })
      .orWhere("user.email = :email", { email: data.email })
      .getOne();

    if (!user) {
      throw new Error("User with this name or email does not exists");
    }

    // Check user password
    if (!(await crypto.compare(String(data.password), user.password))) {
      throw new Error("Wrong password, please try again");
    }

    const { access_token, refresh_token } = this.generateTokens(user.id);

    return {
      access_token: access_token,
      refresh_token: refresh_token,
    };
  }

  /**
   * Return default groups on user registration
   */
  private static async defaultGroups(db: Database) {
    const repository = db.getRepository(Group);
    const group = (await repository
      .createQueryBuilder("group")
      .where("id=:id", { id: EUserGroups.users })
      .getOne()) as Group;
    return [group];
  }

  /**
   * Refreshes user tokens by checking given refresh_token
   */
  public static refreshToken(token: string, options?: TokenOptions) {
    try {
      const decode = jwt.verify(
        token,
        options?.refreshSecret ?? Environment.JWT_REFRESH_SECRET
      );
      const { access_token, refresh_token } = this.generateTokens(
        (decode as JWTPayload).id,
        options
      );
      return {
        access_token: access_token,
        refresh_token: refresh_token,
      };
    } catch {
      throw new Error("Invalid or expired refresh token");
    }
  }

  /** Validates data required for login */
  private static validateLoginRequest(data: IUser) {
    return data && (data.email || data.name) && data.password;
  }

  /** Validates data required for register */
  private static validateRegisterRequest(data: IUser) {
    return data && data.email && data.name && data.password;
  }

  /**
   * Generate tokens based on userId as payload, and on given / environment secrets
   */
  public static generateTokens(userId: number, options?: TokenOptions) {
    const tokenOptions: TokenOptions = options ?? Environment.JWT_TOKEN_OPTIONS;

    const access = jwt.sign({ id: userId }, tokenOptions.secret, {
      expiresIn: tokenOptions.expiresIn,
    });
    const refresh = jwt.sign({ id: userId }, tokenOptions.refreshSecret, {
      expiresIn: tokenOptions.refreshExpiresIn,
    });

    return { access_token: access, refresh_token: refresh };
  }
}
