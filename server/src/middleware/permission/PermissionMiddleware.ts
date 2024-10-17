import { type NextFunction, type Request, type Response } from "express";
import { Database } from "../../database/Database";
import { JWTUtils } from "../../utils/JWTUtils";
import { UserRepository } from "../../database/repositories/UserRepository";
import { ClientResponse } from "../../enums/ClientResponse";
import { HttpStatus } from "../../enums/HttpStatus";
import { ValueUtils } from "../../utils/ValueUtils";
import { ErrorController } from "../../error/ErrorController";
import { Permissions } from "../../enums/Permissions";

export function checkPermission(db: Database, permission: Permissions) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const userRepository = UserRepository.getRepository(db);
      const userId = JWTUtils.getTokenPayload(req?.headers?.authorization).id;
      const user = await userRepository.get(userId, {
        select: ["id"],
        relations: ["permissions"],
      });

      const userPermissions = user.permissions.map((v) => v.name);
      if (!userPermissions.includes(permission)) {
        return res
          .status(HttpStatus.BAD_REQUEST)
          .send({ error: ClientResponse.NO_PERMISSION });
      }
      next();
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
        ValueUtils.validateId(req.params.id);
        return checkPermission(db, permission)(req, res, next);
      } catch (err: unknown) {
        const { message, code } = await ErrorController.resolveError(err);
        return res.status(code).send({ error: message });
      }
    }

    next();
  };
}
