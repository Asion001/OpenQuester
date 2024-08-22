import express from "express";
import * as jwt from "jsonwebtoken";
import { Environment } from "../config/Environment";
import { Database } from "../database/Database";
import { User } from "../database/models/User";
import { IUser } from "../models/user/IUser";
import { JWTPayload } from "../types/jwt/jwt";
import { UserGroups } from "../database/models/UsersGroup";
import { IGroup } from "../models/IGroup";
import { Group } from "../database/models/Group";
import { ValueUtils } from "../utils/ValueUtils";
import { IApiContext } from "../models/IApiContext";
import { IUpdateUser } from "../models/user/IUpdateUser";
import { ObjectLiteral, Repository } from "typeorm";

interface IUserUpdateContext extends IApiContext {
  /** `This can be used only when ADMIN does user update` */
  adminBypass?: boolean;
}

export class UserService {
  /**
   * Allows for user to get info about himself by sending request with his token
   * in headers.
   */
  public static async getByToken(
    ctx: IApiContext,
    req: express.Request
  ): Promise<IUser> {
    // Token validated by middleware, so no need to validate it
    const payload = this.getPayload(req);
    const id = ValueUtils.validateId(payload.id);

    return await this.getById(ctx.db, id);
  }

  /**
   * Get list of all available users in DB
   * TODO: Later could be reworked in / added `online`, to get only online users
   */
  public static async all(ctx: IApiContext, req: express.Request) {
    const payload = this.getPayload(req);

    const user = await this.getById(ctx.db, payload.id);

    if (user.isAdmin()) {
      const repository = ctx.db.getRepository(User);
      const users = await repository.find({
        relations: ["groups"],
      });
      // Don't send user passwords
      users.map((u) => delete u.password);
      return users;
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Retrieve one user
   */
  public static async retrieve(ctx: IApiContext, req: express.Request) {
    if (!req.params.id) {
      return this.getByToken(ctx, req);
    }

    const id = ValueUtils.validateId(req.params.id);

    const payload = this.getPayload(req);

    const user = await this.getById(ctx.db, payload.id);

    if (payload.id == id || user.isAdmin()) {
      return await this.getById(ctx.db, id);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Update user by params id
   */
  public static async update(ctx: IUserUpdateContext, req: express.Request) {
    if (Object.keys(req.body).length < 1) {
      throw new Error("To update user specify at least one field");
    }

    const payload = this.getPayload(req);
    const id = ValueUtils.validateId(
      req.params.id ? req.params.id : payload.id
    );

    if (payload.id == id) {
      return await this.updateUser(ctx, id, req.body);
    }

    const user = await this.getById(ctx.db, payload.id);

    if (user.isAdmin()) {
      ctx.adminBypass = true;
      return await this.updateUser(ctx, id, req.body);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Delete user by params id
   */
  public static async delete(ctx: IUserUpdateContext, req: express.Request) {
    const payload = this.getPayload(req);
    const id = ValueUtils.validateId(
      req.params.id ? req.params.id : payload.id
    );

    const target = await this.getById(ctx.db, id);
    if (!target) {
      throw new Error(`User with ID '${id}' does not exists.`);
    }

    const user = await this.getById(ctx.db, payload.id);

    if (payload.id == id || user.isAdmin()) {
      return await this.deleteUser(ctx.db, id);
    }

    throw new Error("You are not able to do that");
  }

  /**
   * User deletion logic
   */
  private static async deleteUser(db: Database, id: number) {
    const repository = db.getRepository(User);
    const user = (await repository.findOne({
      where: { id: id },
    })) as User;

    user.is_deleted = true;
    await this.save(repository, user);
    return;
  }

  private static async getById(db: Database, id: number) {
    const repository = db.getRepository(User);
    const user = (await repository.findOne({
      where: { id: id },
      relations: ["groups"],
    })) as User;
    if (user) {
      // Don't send back user password
      delete user.password;
    }
    return user;
  }

  /**
   * User updating logic
   */
  private static async updateUser(
    ctx: IUserUpdateContext,
    id: number,
    body: IUpdateUser
  ) {
    const db = ctx.db;
    const crypto = ctx.crypto;

    if (!crypto) {
      throw new Error("Crypto instance should be provided");
    }

    const repository = db.getRepository(User);

    const user = (await repository.findOne({
      where: { id: id },
      relations: ["groups"],
    })) as User;

    if (!user) {
      throw new Error("User not found");
    }

    if (user.isAdmin() && !ctx.adminBypass) {
      ctx.adminBypass = true;
    }

    if (!body.password && !ctx.adminBypass) {
      throw new Error("User password is not provided");
    }

    if (
      !ctx.adminBypass &&
      !(await crypto.compare(body.password!, user.password!))
    ) {
      throw new Error("User password is incorrect");
    }

    // Set new password only if it's not as previous one.
    // crypto.compare() is faster than hashing, so we prefer do this check
    if (
      body.newPassword &&
      !(await crypto.compare(body.newPassword, user.password!))
    ) {
      user.password = await crypto.hash(body.newPassword, 10);
    }

    if (body.birthday) {
      user.birthday = ValueUtils.getBirthday(body.birthday);
    }

    user.name = body.name ?? user.name;
    user.email = body.email ?? user.email;
    user.avatar = body.avatar ?? user.avatar;

    if (body.groups && body.groups.length > 0) {
      if (!ctx.adminBypass) {
        throw new Error("Only admins allowed to change user groups");
      }
      const groupRepository = db.getRepository(Group);
      // Check if specified groups exists
      for (const g of body.groups) {
        if (
          !(await groupRepository.exists({
            where: {
              id: g.id,
              name: g.name,
            },
          }))
        ) {
          throw new Error(
            `Group '${g.name}' with ID '${g.id}' does not exists`
          );
        }
      }

      const newGroupIds = body.groups.map((g) => g.id);
      const userGroupIds = user.groups
        ? user.groups.map((g: IGroup) => g.id)
        : [];

      const groupsToRemove = userGroupIds.filter(
        (id: number) => !newGroupIds.includes(id)
      );

      const groupsToAdd = newGroupIds.filter(
        (id) => !userGroupIds.includes(id)
      );

      await db.ds.transaction(async (transactionalEntityManager) => {
        // Make user saving as part of transaction
        await this.save(repository, user);

        // Remove old group associations
        if (groupsToRemove.length > 0) {
          await transactionalEntityManager
            .createQueryBuilder()
            .delete()
            .from(UserGroups)
            .where("user_id = :userId AND group_id IN (:...groupIds)", {
              userId: user.id,
              groupIds: groupsToRemove,
            })
            .execute();
        }

        // Add new group associations
        if (groupsToAdd.length > 0) {
          const userGroupsToAdd = groupsToAdd.map((groupId) => ({
            user_id: user.id,
            group_id: groupId,
          }));

          await transactionalEntityManager
            .createQueryBuilder()
            .insert()
            .into(UserGroups)
            .values(userGroupsToAdd)
            .orIgnore()
            .execute();
        }
      });
      // Assign provided groups for return value
      user.groups = body.groups;
    } else {
      await this.save(repository, user);
    }
    // Do not return back user password
    delete user.password;

    user.updated_at = new Date();
    return user;
  }

  private static async save(repository: Repository<ObjectLiteral>, user: User) {
    return repository.update(
      { id: user.id },
      {
        name: user.name,
        email: user.email,
        birthday: user.birthday,
        avatar: user.avatar,
        password: user.password,
        is_deleted: user.is_deleted,
      }
    );
  }

  /**
   * Returns token payload
   */
  public static getPayload(req: express.Request) {
    const token = req.headers.authorization?.split(" ")[1] as string;

    return jwt.verify(token, Environment.JWT_SECRET) as JWTPayload;
  }
}
