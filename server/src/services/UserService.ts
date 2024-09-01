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
import { ApiResponse } from "../enums/ApiResponse";
import { ServerResponse } from "../enums/ServerResponse";

export class UserService {
  /**
   * Allows for user to get info about himself by sending request with his token
   * in headers.
   */
  public static async getByTokenPayload(
    db: Database,
    tokenPayload: JWTPayload
  ): Promise<User> {
    // Token validated by middleware, so no need to validate it
    const id = ValueUtils.validateId(tokenPayload.id);

    return User.get(db, id);
  }

  /**
   * Get list of all available users in DB
   */
  public static async list(db: Database, tokenPayload: JWTPayload) {
    const requestUser = await User.get(db, tokenPayload.id);

    if (requestUser.isAdmin()) {
      return User.list(db);
    }

    throw new Error(ApiResponse.ACCESS_DENIED);
  }

  /**
   * Retrieve one user
   */
  public static async get(
    db: Database,
    userId: number,
    tokenPayload: JWTPayload
  ) {
    if (!userId) {
      return this.getByTokenPayload(db, tokenPayload);
    }

    const id = ValueUtils.validateId(userId);

    if (tokenPayload.id == id) {
      return User.get(db, id);
    }

    const requestUser = await User.get(db, tokenPayload.id);
    if (requestUser.isAdmin()) {
      return User.get(db, id);
    }

    throw new Error(ApiResponse.ACCESS_DENIED);
  }

  /**
   * Update user by params id
   */
  public static async update(
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

    throw new Error(ApiResponse.ACCESS_DENIED);
  }

  /**
   * Delete user by params id
   */
  public static async delete(
    db: Database,
    userId: number,
    tokenPayload: JWTPayload
  ) {
    const id = ValueUtils.validateId(userId ?? tokenPayload.id);

    if (tokenPayload.id == id) {
      return this.performDelete(db, id);
    }

    throw new Error(ApiResponse.ACCESS_DENIED);
  }

  /**
   * User deletion logic
   */
  private static async performDelete(db: Database, id: number) {
    const repository = db.getRepository(User);

    const user = (await repository.findOne({
      where: { id },
      select: ["is_deleted"],
    })) as User;

    if (!user || user.is_deleted) {
      throw new Error(ApiResponse.USER_NOT_FOUND);
    }

    return user.delete(db, repository);
  }

  /**
   * User updating logic
   */
  private static async performUpdate(
    db: Database,
    crypto: Crypto,
    id: number,
    body: IUpdateUser
  ) {
    if (!crypto) {
      throw new Error(ServerResponse.NO_CRYPTO);
    }

    const repository = db.getRepository(User);

    const user = (await repository.findOne({
      where: { id },
      relations: ["permissions"],
    })) as User;

    if (!user) {
      throw new Error(ApiResponse.USER_NOT_FOUND);
    }

    user.name = body.name ?? user.name;
    user.avatar = body.avatar ?? user.avatar;
    user.updated_at = new Date();
    if (body.birthday) {
      user.birthday = ValueUtils.getBirthday(body.birthday);
    }

    user.update(db, repository);
    // Do not return back user password
    delete user.password;

    return user.export();
  }

  public static async updatePermissions(
    ctx: ApiContext,
    id: number,
    body: any // Should be typed with permissions list
  ) {
    // TODO: Implement (finish) in future
    // This is only logic, permissions validation should be done before
    const db = ctx.db;
    const repository = db.getRepository(User);

    const user = (await repository.findOne({
      where: { id },
      relations: ["permissions"],
    })) as User;

    if (!user) {
      throw new Error(ApiResponse.USER_NOT_FOUND);
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
        throw new Error(
          ApiResponse.USER_PERMISSION_NOT_EXISTS.replace(
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
      user.update(db, repository);
    });

    return user;
  }
}
