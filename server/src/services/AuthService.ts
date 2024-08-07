import { Environment } from "../config/Environment";
import { Database } from "../database/Database";
import { File } from "../database/models/File";
import { User } from "../database/models/User";
import { IUser } from "../models/IUser";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

type JWTPayload = {
  /** User id */
  id: number;
  /** Issued at (timestamp) */
  iat: number;
  /** Expires at (timestamp) */
  exp: number;
};

type TokenOptions = {
  secret: string;
  refreshSecret: string;
  expiresIn: string;
  refreshExpiresIn: string;
};

export class AuthService {
  public static async register(
    db: Database,
    data: IUser,
    crypto: typeof bcrypt
  ): Promise<IUser> {
    if (!this.validateRegisterRequest(data)) {
      throw new Error(
        "Provide all required fields: 'email', 'name' and 'password'"
      );
    }
    const repository = db.getRepository(User);

    const user = new User();
    user.name = data.name;
    user.email = data.email;
    user.password = await crypto.hash(data.password as string, 10);
    user.birthday = data.birthday;
    user.avatar = data.avatar as File;

    await repository.save(user);
    const { access_token, refresh_token } = this.generateTokens(user.id);
    return {
      access_token: access_token,
      refresh_token: refresh_token,
    };
  }

  public static async login(
    db: Database,
    data: IUser,
    crypto: typeof bcrypt
  ): Promise<IUser> {
    if (!this.validateLoginRequest(data)) {
      throw new Error(
        "Provide all required fields: 'email' or 'name' and 'password'"
      );
    }

    const repository = db.getRepository(User);
    const user = await repository
      .createQueryBuilder("user")
      .where("user.name = :name", { name: data.name })
      .orWhere("user.email = :email", { email: data.email })
      .getOne();

    if (!user) {
      throw new Error("User with this name or email does not exists");
    }

    if (!(await crypto.compare(data.password as string, user.password))) {
      throw new Error("Wrong password, please try again");
    }

    const { access_token, refresh_token } = this.generateTokens(user.id);

    return {
      access_token: access_token,
      refresh_token: refresh_token,
    };
  }

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

  private static validateLoginRequest(data: IUser) {
    return data && (data.email || data.name) && data.password;
  }

  private static validateRegisterRequest(data: IUser) {
    return data && data.email && data.name && data.password;
  }

  public static generateTokens(userId: number, options?: TokenOptions) {
    const tokenOptions: TokenOptions = {
      secret: options?.secret ?? Environment.JWT_SECRET,
      refreshSecret: options?.refreshSecret ?? Environment.JWT_REFRESH_SECRET,
      expiresIn: options?.expiresIn ?? Environment.JWT_EXPIRES_IN,
      refreshExpiresIn:
        options?.refreshExpiresIn ?? Environment.JWT_REFRESH_EXPIRES_IN,
    };

    const access = jwt.sign({ id: userId }, tokenOptions.secret, {
      expiresIn: tokenOptions.expiresIn,
    });
    const refresh = jwt.sign({ id: userId }, tokenOptions.refreshSecret, {
      expiresIn: tokenOptions.refreshExpiresIn,
    });

    return { access_token: access, refresh_token: refresh };
  }
}
