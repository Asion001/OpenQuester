import { type NextFunction, type Request, type Response } from "express";

import { type Database } from "../../database/Database";
import { type Permissions } from "../../enums/Permissions";

import { JWTUtils } from "../../utils/JWTUtils";
import { UserRepository } from "../../database/repositories/UserRepository";
import { ClientResponse } from "../../enums/ClientResponse";
import { HttpStatus } from "../../enums/HttpStatus";
import { ValueUtils } from "../../utils/ValueUtils";
import { ErrorController } from "../../error/ErrorController";
import { TranslateService as ts } from "../../services/text/TranslateService";
import { Permission } from "../../database/models/Permission";

export function checkPermission(db: Database, permission: Permissions) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const userId = JWTUtils.getTokenPayload(req?.headers?.authorization).id;
      const user = await _getUser(db, userId);

      if (await Permission.checkPermission(user, permission)) {
        return next();
      }

      return res.status(HttpStatus.BAD_REQUEST).send({
        error: ts.localize(ClientResponse.NO_PERMISSION, req.headers),
      });
    } catch (error) {
      next(error);
    }
  };
}

/**
 * Require some permission from user, that makes request, if he passed
 * the id in request params, which means he's doing request on another user
 */
export function requirePermissionIfIdProvided(
  db: Database,
  permission: Permissions
) {
  return async (req: Request, res: Response, next: NextFunction) => {
    if (req.params.id) {
      try {
        const id = ValueUtils.validateId(req.params.id);
        const reqId = JWTUtils.getTokenPayload(req.headers.authorization).id;

        const user = await _getUser(db, id);
        const requestUser = await _getUser(db, reqId);

        if (user?.id === requestUser?.id) {
          return next();
        }

        if (await Permission.checkPermission(user, permission)) {
          return next();
        }

        return res.status(HttpStatus.BAD_REQUEST).send({
          error: ts.localize(ClientResponse.NO_PERMISSION, req.headers),
        });
      } catch (err: unknown) {
        const { message, code } = await ErrorController.resolveError(
          err,
          req.headers
        );
        return res.status(code).send({ error: message });
      }
    }

    next();
  };
}

async function _getUser(db: Database, id: number) {
  return UserRepository.getRepository(db).get(id, {
    select: ["id"],
    relations: ["permissions"],
  });
}
