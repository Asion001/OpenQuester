import { USER_RELATIONS, USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { UpdateUserDTO } from "domain/types/dto/user/UpdateUserDTO";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { User } from "infrastructure/database/models/User";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class UserService {
  constructor(
    private readonly userRepository: UserRepository,
    private readonly fileUsageRepository: FileUsageRepository
  ) {
    //
  }
  /**
   * Get list of all available users in DB
   */
  public async list(
    paginationOpts: PaginationOpts<User>
  ): Promise<PaginatedResult<UserDTO[]>> {
    const usersListPaginated = await this.userRepository.list(paginationOpts, {
      select: USER_SELECT_FIELDS,
      relations: USER_RELATIONS,
      relationSelects: {
        avatar: ["id", "filename"],
        permissions: ["id", "name"],
      },
    });

    const usersData: UserDTO[] = await Promise.all(
      usersListPaginated.data.map((user) => user.toDTO())
    );

    return { data: usersData, pageInfo: usersListPaginated.pageInfo };
  }

  /**
   * Retrieve one user
   */
  public async get(
    userId: number,
    selectOptions?: SelectOptions<User>
  ): Promise<UserDTO> {
    const user = await this.userRepository.get(userId, {
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? USER_RELATIONS,
      relationSelects: selectOptions?.relationSelects ?? {
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

    return user.toDTO();
  }

  /**
   * Update user by params id
   */
  public async update(user: User, updateUserData: UpdateUserDTO) {
    return this.performUpdate(user, updateUserData);
  }

  /**
   * Delete user by params id
   */
  public async delete(userId: number) {
    return this.performDelete(userId);
  }

  /**
   * User deletion logic
   */
  private async performDelete(userId: number) {
    const user = await this.userRepository.get(userId, {
      select: ["id", "is_deleted"],
      relations: [],
    });

    if (!user || user.is_deleted) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    this.userRepository.delete(user);
  }

  /**
   * User updating logic
   */
  private async performUpdate(
    user: User,
    updateUserData: UpdateUserDTO
  ): Promise<UserDTO> {
    const updateData = updateUserData;

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

    await this.userRepository.update(user);

    if (updateData.avatar && updateData.avatar.id != previousAvatar?.id) {
      await this.fileUsageRepository.writeUsage(updateData.avatar, user);
      if (previousAvatar) {
        await this.fileUsageRepository.deleteUsage(previousAvatar, user);
      }
    }

    return user.toDTO();
  }
}
