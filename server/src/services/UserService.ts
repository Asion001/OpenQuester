import express from "express";
import * as jwt from "jsonwebtoken";
import { Environment } from "../config/Environment";
import { Database } from "../database/Database";
import { User } from "../database/models/User";
import { IUser } from "../models/IUser";
import { EUserGroups } from "../enums/EUserGroups";
import { JWTPayload } from "../types/jwt/jwt";

export class UserService {
  public static async getByToken(
    db: Database,
    req: express.Request
  ): Promise<IUser> {
    // Token validated by middleware
    const token = req.headers.authorization?.split(" ")[1] as string;

    const payload = jwt.verify(token, Environment.JWT_SECRET) as JWTPayload;

    return await this.getUserById(db, payload.id);
  }

  public static async retrieve(db: Database, req: express.Request) {
    const id = Number(req.params.id);

    if (id < 1 || isNaN(id)) {
      throw new Error("Please specify id that greater than 1");
    }

    const token = req.headers.authorization?.split(" ")[1] as string;

    const payload = jwt.verify(token, Environment.JWT_SECRET) as JWTPayload;

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

  public static async update(db: Database, req: express.Request) {
    throw new Error(`not implemented ${db} ${req}`);
  }

  public static async delete(db: Database, req: express.Request) {
    throw new Error(`not implemented ${db} ${req}`);
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
}
