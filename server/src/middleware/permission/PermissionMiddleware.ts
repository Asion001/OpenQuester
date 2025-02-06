import { type NextFunction, type Request, type Response } from "express";

import { type Database } from "database/Database";
import { type Permissions } from "enums/Permissions";

import { UserRepository } from "database/repositories/UserRepository";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { ValueUtils } from "utils/ValueUtils";
import { ErrorController } from "error/ErrorController";
import { TranslateService as ts } from "services/text/TranslateService";
import { Permission } from "database/models/Permission";
import { ClientError } from "error/ClientError";
import { SessionData } from "express-session";

export function checkPermission(db: Database, permission: Permissions) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const user = await UserRepository.getUserBySession(
        db,
        req.session as SessionData,
        {
          select: ["id"],
          relations: ["permissions"],
        }
      );

      if (!user) {
        throw new ClientError(
          ClientResponse.ACCESS_DENIED,
          HttpStatus.UNAUTHORIZED
        );
      }

      if (await Permission.checkPermission(user, permission)) {
        return next();
      }

      return res.status(HttpStatus.FORBIDDEN).send({
        error: ts.localize(ClientResponse.NO_PERMISSION, req.headers),
      });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };
}

/**
 * Require some permission from user, that makes request, if he passed
 * the id in request params, which means he's doing request on another user
 */
export function checkPermissionWithId(db: Database, permission: Permissions) {
  return async (req: Request, res: Response, next: NextFunction) => {
    if (req.params.id) {
      try {
        const id = ValueUtils.validateId(req.params.id);

        const user = await UserRepository.getRepository(db).get(id, {
          select: ["id"],
          relations: ["permissions"],
        });

        const requestUser = await UserRepository.getUserBySession(
          db,
          req.session as SessionData,
          {
            select: ["id"],
            relations: ["permissions"],
          }
        );

        if (user?.id === requestUser?.id) {
          return next();
        }

        if (await Permission.checkPermission(user, permission)) {
          return next();
        }

        return res.status(HttpStatus.FORBIDDEN).send({
          error: ts.localize(ClientResponse.NO_PERMISSION, req.headers),
        });
      } catch (err: unknown) {
        const { message, code } = await ErrorController.resolveError(
          err,
          req.headers
        );
        return res.status(code).send({ error: message });
      }
    } else {
      throw new ClientError(ClientResponse.BAD_USER_ID);
    }
  };
}
