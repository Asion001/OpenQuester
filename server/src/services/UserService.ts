import { type ApiContext } from "./context/ApiContext";
import { type Request } from "express";

import { UserPermissions } from "../database/models/UserPermission";
import { IPermission } from "../interfaces/IPermission";
import { Permission } from "../database/models/Permission";
import { ValueUtils } from "../utils/ValueUtils";
import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";
import { UserRepository } from "../database/repositories/UserRepository";
import { TranslateService as ts } from "./text/TranslateService";
import { JWTUtils } from "../utils/JWTUtils";
import { TemplateUtils } from "../utils/TemplateUtils";

export class UserService {
  /**
   * Get list of all available users in DB
   */
  public async list(ctx: ApiContext) {
    return UserRepository.getRepository(ctx.db).list({
      relations: ["permissions"],
    });
  }

  /**
   * Retrieve one user
   */
  public async get(ctx: ApiContext, req: Request) {
    return UserRepository.getRepository(ctx.db).get(this._getId(req));
  }

  /**
   * Update user by params id
   */
  public async update(ctx: ApiContext, req: Request) {
    return this.performUpdate(ctx, req, this._getId(req));
  }

  /**
   * Delete user by params id
   */
  public async delete(ctx: ApiContext, req: Request) {
    return this.performDelete(ctx, req);
  }

  /**
   * User deletion logic
   */
  private async performDelete(ctx: ApiContext, req: Request) {
    const repository = UserRepository.getRepository(ctx.db);
    const lang = ts.parseHeader(req.headers["accept-language"]);

    const user = await repository.get(this._getId(req), {
      select: ["is_deleted"],
      relations: ["permissions"],
    });

    if (!user || user.is_deleted) {
      throw new ClientError(ts.translate(ClientResponse.USER_NOT_FOUND, lang));
    }

    repository.delete(user, lang);
  }

  /**
   * User updating logic
   */
  private async performUpdate(ctx: ApiContext, req: Request, id: number) {
    const repository = UserRepository.getRepository(ctx.db);
    const body = req.body;

    const user = await repository.get(id, {
      relations: ["permissions"],
    });

    if (!user) {
      const lang = ts.parseHeader(req.headers["accept-language"]);
      throw new ClientError(ts.translate(ClientResponse.USER_NOT_FOUND, lang));
    }

    user.name = body.name ?? user.name;
    user.avatar = body.avatar ?? user.avatar;
    user.updated_at = new Date();
    if (body.birthday) {
      user.birthday = ValueUtils.getBirthday(body.birthday);
    }

    await repository.update(user);
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
          TemplateUtils.text(ClientResponse.USER_PERMISSION_NOT_EXISTS, {
            name: p.name,
            id: p.id,
          })
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

  private _getId(req: Request) {
    const tokenPayload = JWTUtils.getTokenPayload(req.headers.authorization);
    const paramsId = Number(req.params.id);
    return ValueUtils.validateId(
      Number.isNaN(paramsId) ? tokenPayload.id : paramsId,
      ts.parseHeader(req.headers["accept-language"])
    );
  }
}
