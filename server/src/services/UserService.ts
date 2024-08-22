import express from "express";
import { User } from "../database/models/User";
import { IUser } from "../interfaces/user/IUser";
import { UserPermissions } from "../database/models/UserPermission";
import { IPermission } from "../interfaces/IPermission";
import { Permission } from "../database/models/Permission";
import { ValueUtils } from "../utils/ValueUtils";
import { IApiContext } from "../interfaces/IApiContext";
import { IUpdateUser } from "../interfaces/user/IUpdateUser";
import { JWTUtils } from "../utils/JWTUtils";
import { CryptoUtils } from "../utils/CryptoUtils";

export class UserService {
  /**
   * Allows for user to get info about himself by sending request with his token
   * in headers.
   */
  public static async getByToken(
    ctx: IApiContext,
    req: express.Request
  ): Promise<User> {
    // Token validated by middleware, so no need to validate it
    const payload = JWTUtils.getPayload(req);
    const id = ValueUtils.validateId(payload.id);

    return User.get(ctx.db, id);
  }

  /**
   * Get list of all available users in DB
   */
  public static async list(ctx: IApiContext, req: express.Request) {
    const payload = JWTUtils.getPayload(req);

    const requestUser = await User.get(ctx.db, payload.id);

    if (requestUser.isAdmin()) {
      return User.list(ctx.db);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Retrieve one user
   */
  public static async get(ctx: IApiContext, req: express.Request) {
    if (!req.params.id) {
      return this.getByToken(ctx, req);
    }

    const id = ValueUtils.validateId(req.params.id);
    const payload = JWTUtils.getPayload(req);

    const requestUser = await User.get(ctx.db, payload.id);

    if (payload.id == id || requestUser.isAdmin()) {
      return User.get(ctx.db, id);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Update user by params id
   */
  public static async update(ctx: IApiContext, req: express.Request) {
    const payload = JWTUtils.getPayload(req);
    const id = ValueUtils.validateId(req.params.id ?? payload.id);

    if (payload.id == id) {
      return this.performUpdate(ctx, id, req.body);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Delete user by params id
   */
  public static async delete(ctx: IApiContext, req: express.Request) {
    const payload = JWTUtils.getPayload(req);
    const id = ValueUtils.validateId(req.params.id ?? payload.id);

    if (payload.id == id) {
      return this.performDelete(ctx, id);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * User deletion logic
   */
  private static async performDelete(ctx: IApiContext, id: number) {
    const repository = ctx.db.getRepository(User);

    const user = (await repository.findOne({
      where: { id },
    })) as User;

    if (!user) {
      throw new Error(`User does not exists.`);
    }

    if (user.is_deleted) {
      throw new Error("User already deleted");
    }

    return user.delete(ctx.db, repository);
  }

  /**
   * User updating logic
   */
  private static async performUpdate(
    ctx: IApiContext,
    id: number,
    body: IUpdateUser
  ) {
    const db = ctx.db;
    const crypto = ctx.crypto;

    if (!crypto) {
      throw new Error("Crypto instance should be provided in context");
    }

    const repository = db.getRepository(User);

    const user = (await repository.findOne({
      where: { id },
      relations: ["permissions"],
    })) as User;

    if (!user) {
      throw new Error("User not found");
    }

    if (!(await CryptoUtils.compare(body.password!, user.password!, crypto))) {
      throw new Error("Password is incorrect");
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
    ctx: IApiContext,
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
      throw new Error("User not found");
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
          `Permission '${p.name}' with ID '${p.id}' does not exists`
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

    await db.ds.transaction(async (transactionalEntityManager) => {
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
