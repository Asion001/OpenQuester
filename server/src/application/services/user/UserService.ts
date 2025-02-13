import { type ApiContext } from "application/context/ApiContext";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { StorageServiceModel } from "domain/types/file/StorageServiceModel";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { UpdateUserDTO } from "domain/types/user/UpdateUserData";
import { User } from "infrastructure/database/models/User";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class UserService {
  /**
   * Get list of all available users in DB
   */
  public async list(
    ctx: ApiContext,
    paginationOpts: PaginationOpts<User>
  ): Promise<PaginatedResult<UserDTO[]>> {
    const userRepository = UserRepository.getRepository(ctx.db);
    const usersListPaginated = await userRepository.list(paginationOpts, {
      select: USER_SELECT_FIELDS,
      relations: ["avatar", "permissions"],
      relationSelects: {
        avatar: ["id", "filename"],
        permissions: ["id", "name"],
      },
    });

    // TODO: When global service locator is implemented - move this to user.toDTO()
    const storageService = ctx.serverServices.storage.createStorageService(
      ctx,
      "minio"
    );

    const usersData = await Promise.all(
      usersListPaginated.data.map((user) =>
        this.mapUserToDTO(user, storageService)
      )
    );

    return { data: usersData, pageInfo: usersListPaginated.pageInfo };
  }

  private async mapUserToDTO(
    user: User,
    storageService: StorageServiceModel
  ): Promise<UserDTO> {
    const avatarLink = user.avatar
      ? await storageService.get(user.avatar.filename)
      : undefined;

    return {
      id: user.id,
      username: user.username,
      email: user.email,
      birthday: user.birthday,
      discordId: user.discord_id,
      createdAt: user.created_at,
      updatedAt: user.updated_at,
      isDeleted: user.is_deleted,
      permissions: user.permissions,
      avatar: avatarLink,
    };
  }

  /**
   * Retrieve one user
   */
  public async get(ctx: ApiContext, userId: number) {
    const user = await UserRepository.getRepository(ctx.db).get(userId, {
      select: USER_SELECT_FIELDS,
      relations: ["avatar", "permissions"],
      relationSelects: {
        avatar: ["id", "filename"],
        permissions: ["id", "name"],
      },
    });

    if (!user) {
      throw new ClientError(
        ClientResponse.USER_NOT_FOUND,
        HttpStatus.NOT_FOUND
      );
    }

    const storageService = ctx.serverServices.storage.createStorageService(
      ctx,
      "minio"
    );

    // TODO: When global service locator is implemented - move this to user.toDTO()
    return this.mapUserToDTO(user, storageService);
  }

  /**
   * Update user by params id
   */
  public async update(
    ctx: ApiContext,
    user: User,
    updateUserData: UpdateUserDTO
  ) {
    const updatedUser = await this.performUpdate(ctx, user, updateUserData);
    const storageService = ctx.serverServices.storage.createStorageService(
      ctx,
      "minio"
    );

    // TODO: When global service locator is implemented - move this to user.toDTO()
    return this.mapUserToDTO(updatedUser, storageService);
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
      select: ["id", "is_deleted"],
      relations: [],
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
    user: User,
    updateUserData: UpdateUserDTO
  ) {
    const updateData = updateUserData;
    const repository = UserRepository.getRepository(ctx.db);
    const fileUsageRepo = FileUsageRepository.getRepository(ctx.db);

    user.username = updateData.username ?? user.username;

    const previousAvatar = user.avatar;

    user.avatar = updateData.avatar ?? user.avatar;
    user.updated_at = new Date();

    if (updateData.birthday) {
      const date = new Date(updateData.birthday);
      if (!ValueUtils.isValidDate(date)) {
        throw new ClientError(ClientResponse.BAD_DATE_FORMAT);
      }
      user.birthday = date;
    }

    await repository.update(user);

    if (updateData.avatar && updateData.avatar.id != previousAvatar?.id) {
      await fileUsageRepo.writeUsage(updateData.avatar, user);
      if (previousAvatar) {
        await fileUsageRepo.deleteUsage(previousAvatar, user);
      }
    }

    return user.export();
  }
}
