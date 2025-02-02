import { type ApiContext } from "services/context/ApiContext";

import { ValueUtils } from "utils/ValueUtils";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";
import { UserRepository } from "database/repositories/UserRepository";
import { JWTUtils } from "utils/JWTUtils";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { JWTResponse } from "types/jwt/jwt";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { User } from "database/models/User";
import { IRegisterUser } from "types/user/IRegisterUser";
import { IUpdateUserData } from "types/user/IUpdateUserData";

export class UserService {
  public async register(
    ctx: ApiContext,
    data: IRegisterUser
  ): Promise<JWTResponse> {
    const repository = UserRepository.getRepository(ctx.db);
    const user = await repository.create(ctx, data);

    const { access_token, refresh_token } = JWTUtils.generateTokens(user.id);
    return {
      access_token,
      refresh_token,
    };
  }

  /**
   * Get list of all available users in DB
   */
  public async list(ctx: ApiContext, paginationOpts: IPaginationOpts<User>) {
    return UserRepository.getRepository(ctx.db).list(paginationOpts, {
      relations: ["permissions", "avatar"],
    });
  }

  /**
   * Retrieve one user
   */
  public async get(ctx: ApiContext, userId: number) {
    return UserRepository.getRepository(ctx.db).get(userId, {
      relations: ["permissions", "avatar"],
    });
  }

  /**
   * Update user by params id
   */
  public async update(ctx: ApiContext, updateUserData: IUpdateUserData) {
    return this.performUpdate(ctx, updateUserData);
  }

  /**
   * Delete user by params id
   */
  public async delete(ctx: ApiContext, userId: number) {
    return this.performDelete(ctx, userId);
  }

  /**
   * User deletion logic
   */
  private async performDelete(ctx: ApiContext, userId: number) {
    const repository = UserRepository.getRepository(ctx.db);

    const user = await repository.get(userId, {
      select: ["is_deleted"],
      relations: ["permissions"],
    });

    if (!user || user.is_deleted) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    repository.delete(user);
  }

  /**
   * User updating logic
   */
  private async performUpdate(
    ctx: ApiContext,
    updateUserData: IUpdateUserData
  ) {
    const data = updateUserData;
    const repository = UserRepository.getRepository(ctx.db);
    const fileUsageRepo = FileUsageRepository.getRepository(ctx.db);

    const user = await repository.get(data.id, {
      relations: ["permissions", "avatar"],
    });

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    user.name = data.name ?? user.name;

    const previousAvatar = user.avatar;

    user.avatar = data.avatar ?? user.avatar;
    user.updated_at = new Date();

    if (data.birthday) {
      user.birthday = ValueUtils.getBirthday(data.birthday);
    }

    await repository.update(user);

    if (data.avatar && data.avatar.id != previousAvatar?.id) {
      await fileUsageRepo.writeUsage(data.avatar, user);
      if (previousAvatar) {
        await fileUsageRepo.deleteUsage(previousAvatar, user);
      }
    }

    return user.export();
  }
}
