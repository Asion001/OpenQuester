import express from "express";
import * as jwt from "jsonwebtoken";
import { Environment } from "../config/Environment";
import { Database } from "../database/Database";
import { User } from "../database/models/User";
import { IUser } from "../models/IUser";
import { EUserGroups } from "../enums/EUserGroups";
import { JWTPayload } from "../types/jwt/jwt";
import { Crypto } from "../types/Crypto";
import { UserGroups } from "../database/models/UsersGroup";
import { IGroup } from "../models/IGroup";
import { Group } from "../database/models/Group";
import { ValueUtils } from "../utils/ValueUtils";

export class UserService {
  /**
   * Allows for user to get info about himself by sending request with his token
   * in headers.
   */
  public static async getByToken(
    db: Database,
    req: express.Request
  ): Promise<IUser> {
    // Token validated by middleware, so no need to validate it
    const payload = this.getPayload(req);
    const id = ValueUtils.validateId(payload.id);

    return await this.getUserById(db, id);
  }

  /**
   * Get list of all available users in DB
   * TODO: Later could be reworked in `online`, to get only online users
   */
  public static async all(db: Database, req: express.Request) {
    const payload = this.getPayload(req);

    const user = await this.getUserById(db, payload.id);

    if (user.groups) {
      for (const g of user.groups) {
        if (g.id == EUserGroups.admins) {
          const repository = db.getRepository(User);
          const users = await repository.find({
            relations: ["groups"],
          });
          // Don't send user passwords
          users.map((u) => delete u.password);
          return users;
        }
      }
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Retrieve one user by params id
   */
  public static async retrieve(db: Database, req: express.Request) {
    const id = ValueUtils.validateId(req.params.id);

    const payload = this.getPayload(req);

    // User asking for his own data
    if (payload.id == id) {
      return await this.getUserById(db, id);
    }

    // User asking for another user data, check his permission
    const user = await this.getUserById(db, payload.id);

    if (user.groups) {
      for (const g of user.groups) {
        if (g.id == EUserGroups.admins) {
          return await this.getUserById(db, id);
        }
      }
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Update user by params id
   */
  public static async update(
    db: Database,
    req: express.Request,
    crypto: Crypto
  ) {
    if (Object.keys(req.body).length < 1) {
      throw new Error("To update user specify at least one field");
    }

    const id = ValueUtils.validateId(req.params.id);
    const payload = this.getPayload(req);

    if (payload.id == id) {
      return await this.updateUser(db, id, req.body, crypto);
    }

    const user = await this.getUserById(db, payload.id);

    if (user.groups) {
      for (const g of user.groups) {
        if (g.id == EUserGroups.admins) {
          req.body["byAdmin"] = true; // Set that admin does update
          return await this.updateUser(db, id, req.body, crypto);
        }
      }
    }

    throw new Error("You are not able to do that");
  }

  /**
   * Delete user by params id
   */
  public static async delete(db: Database, req: express.Request) {
    const id = ValueUtils.validateId(req.params.id);
    const payload = this.getPayload(req);

    const target = await this.getUserById(db, id);
    if (!target) {
      throw new Error(`User with ID '${id}' does not exists.`);
    }

    if (payload.id == id) {
      return await this.deleteUser(db, id);
    }

    const user = await this.getUserById(db, payload.id);

    if (user.groups) {
      for (const g of user.groups) {
        if (g.id == EUserGroups.admins) {
          req.body["byAdmin"] = true; // Set that admin does update
          return await this.deleteUser(db, id);
        }
      }
    }

    throw new Error("You are not able to do that");
  }

  /**
   * User deletion logic
   */
  private static async deleteUser(db: Database, id: number) {
    const repository = db.getRepository(User);
    await repository
      .createQueryBuilder("user")
      .delete()
      .where("id=:id", { id: id })
      .execute();
    return;
  }

  private static async getUserById(db: Database, id: number) {
    const repository = db.getRepository(User);
    const user = (await repository.findOne({
      where: { id: id },
      relations: ["groups"],
    })) as IUser;
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
    db: Database,
    id: number,
    body: IUser,
    crypto: Crypto
  ) {
    const repository = db.getRepository(User);

    const user = await repository.findOne({
      where: { id: id },
      relations: ["groups"],
    });

    if (!user) {
      throw new Error("User not found");
    }

    if (
      // @ts-ignore
      !body.byAdmin &&
      (!body.password || !(await crypto.compare(body.password, user.password)))
    ) {
      throw new Error("User password is incorrect or not provided");
    }

    // Set new password only if it's not as previous one.
    // crypto.compare() is faster than hashing, so we prefer do this check
    if (
      body.newPassword &&
      !(await crypto.compare(body.newPassword, user.password))
    ) {
      user.password = await crypto.hash(body.newPassword, 10);
    }

    if (body.birthday) {
      user.birthday = ValueUtils.getBirthday(body.birthday);
    }

    user.name = body.name ?? user.name;
    user.email = body.email ?? user.email;
    user.avatar = body.avatar ?? user.avatar;

    await repository.update(
      { id: user.id },
      {
        name: user.name,
        email: user.email,
        birthday: user.birthday,
        avatar: user.avatar,
        password: user.password,
      }
    );

    if (body.groups && body.groups.length > 0) {
      // @ts-ignore
      if (!body.byAdmin) {
        throw new Error(
          "Only admins allowed to change user groups (All other fields is updated)"
        );
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
    }
    // Do not return back user password
    delete user.password;

    user.updated_at = new Date();
    return user;
  }

  /**
   * Returns token payload
   */
  public static getPayload(req: express.Request) {
    const token = req.headers.authorization?.split(" ")[1] as string;

    return jwt.verify(token, Environment.JWT_SECRET) as JWTPayload;
  }
}
