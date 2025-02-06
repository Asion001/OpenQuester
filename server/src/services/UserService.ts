import { type ApiContext } from "services/context/ApiContext";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";
import { UserRepository } from "database/repositories/UserRepository";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { User } from "database/models/User";
import { IUpdateUserData } from "types/user/IUpdateUserData";
import { ValueUtils } from "utils/ValueUtils";

export class UserService {
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

    const user = await repository.findOne(
      { id: userId },
      {
        select: ["id", "is_deleted"],
        relations: ["permissions"],
      }
    );

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

    user.username = data.username ?? user.username;

    const previousAvatar = user.avatar;

    user.avatar = data.avatar ?? user.avatar;
    user.updated_at = new Date();

    if (data.birthday) {
      const date = new Date(data.birthday);
      if (!ValueUtils.isValidDate(date)) {
        throw new ClientError(ClientResponse.BAD_DATE_FORMAT);
      }
      user.birthday = date;
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
