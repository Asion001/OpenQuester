import { User } from "../database/models/User";
import { UserPermissions } from "../database/models/UserPermission";
import { IPermission } from "../interfaces/IPermission";
import { Permission } from "../database/models/Permission";
import { ValueUtils } from "../utils/ValueUtils";
import { IUpdateUser } from "../interfaces/user/IUpdateUser";
import { type ApiContext } from "./context/ApiContext";
import { type Database } from "../database/Database";
import { Crypto } from "../interfaces/Crypto";
import { JWTPayload } from "../types/jwt/jwt";
import { ClientResponse } from "../enums/ClientResponse";
import { ServerResponse } from "../enums/ServerResponse";
import { ClientError } from "../error/ClientError";
import { ServerError } from "../error/ServerError";
import { UserRepository } from "../database/repositories/UserRepository";

export class UserService {
  /**
   * Allows for user to get info about himself by sending request with his token
   * in headers.
   */
  public async getByTokenPayload(
    db: Database,
    tokenPayload: JWTPayload
  ): Promise<User> {
    // Token validated by middleware, so no need to validate it
    const id = ValueUtils.validateId(tokenPayload.id);
    return UserRepository.getRepository(db).get(id);
  }

  /**
   * Get list of all available users in DB
   */
  public async list(db: Database) {
    return UserRepository.getRepository(db).list();
  }

  /**
   * Retrieve one user
   */
  public async get(db: Database, userId: number, tokenPayload: JWTPayload) {
    const repository = UserRepository.getRepository(db);

    if (!userId) {
      return this.getByTokenPayload(db, tokenPayload);
    }

    // User asks for himself
    if (tokenPayload.id == userId) {
      return repository.get(userId);
    }

    return repository.get(userId);
  }

  /**
   * Update user by params id
   */
  public async update(
    db: Database,
    crypto: Crypto,
    tokenPayload: JWTPayload,
    updateData: IUpdateUser,
    userId?: number
  ) {
    const id = ValueUtils.validateId(userId ?? tokenPayload.id);

    if (tokenPayload.id == id) {
      return this.performUpdate(db, crypto, id, updateData);
    }

    throw new ClientError(ClientResponse.ACCESS_DENIED);
  }

  /**
   * Delete user by params id
   */
  public async delete(db: Database, userId: number, tokenPayload: JWTPayload) {
    const id = ValueUtils.validateId(userId ?? tokenPayload.id);

    if (tokenPayload.id == id) {
      return this.performDelete(db, id);
    }

    throw new ClientError(ClientResponse.ACCESS_DENIED);
  }

  /**
   * User deletion logic
   */
  private async performDelete(db: Database, id: number) {
    const repository = UserRepository.getRepository(db);

    const user = await repository.get(id, {
      select: ["is_deleted"],
      relations: ["permissions"],
    });

    if (!user || user.is_deleted) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    return repository.delete(user);
  }

  /**
   * User updating logic
   */
  private async performUpdate(
    db: Database,
    crypto: Crypto,
    id: number,
    body: IUpdateUser
  ) {
    if (!crypto) {
      throw new ServerError(ServerResponse.NO_CRYPTO);
    }

    const repository = UserRepository.getRepository(db);

    const user = await repository.get(id, {
      relations: ["permissions"],
    });

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    user.name = body.name ?? user.name;
    user.avatar = body.avatar ?? user.avatar;
    user.updated_at = new Date();
    if (body.birthday) {
      user.birthday = ValueUtils.getBirthday(body.birthday);
    }

    repository.update(user);
    // Do not return back user password
    delete user.password;

    return user.export();
  }

  public async updatePermissions(
    ctx: ApiContext,
    id: number,
    body: any // Should be typed with permissions list
  ) {
    // TODO: Implement (finish) in future
    // This is only logic, permissions validation should be done before
    const db = ctx.db;
    const repository = UserRepository.getRepository(db);

    const user = await repository.get(id, { relations: ["permissions"] });

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    const permRepository = db.getRepository(Permission);
    // Check if specified permissions exists
    for (const p of body.permissions) {
      if (
        !(await permRepository.exists({
          where: {
            id: p.id,
            name: p.name,
          },
        }))
      ) {
        throw new ClientError(
          ClientResponse.USER_PERMISSION_NOT_EXISTS.replace(
            "%name",
            p.name
          ).replace("%id", p.id)
        );
      }
    }

    const newPermIds = body.permissions.map((p: IPermission) => p.id);
    const userPermIds = user.permissions
      ? user.permissions.map((p: IPermission) => p.id)
      : [];

    const permsToRemove = userPermIds.filter(
      (id: number) => !newPermIds.includes(id)
    );

    const permsToAdd = newPermIds.filter(
      (id: number) => !userPermIds.includes(id)
    );

    await db.dataSource.transaction(async (transactionalEntityManager) => {
      // Remove old group associations
      if (permsToRemove.length > 0) {
        await transactionalEntityManager
          .createQueryBuilder()
          .delete()
          .from(UserPermissions)
          .where("user_id = :userId AND group_id IN (:...permIds)", {
            userId: user.id,
            permIds: permsToRemove,
          })
          .execute();
      }

      // Add new group associations
      if (permsToAdd.length > 0) {
        const userPermsToAdd = permsToAdd.map((permId: any) => ({
          user_id: user.id,
          permission_id: permId,
        }));

        await transactionalEntityManager
          .createQueryBuilder()
          .insert()
          .into(UserPermissions)
          .values(userPermsToAdd)
          .orIgnore()
          .execute();
      }
      // Assign provided groups for return value
      user.permissions = body.groups;
      repository.update(user);
    });

    return user;
  }
}
