import { type NextFunction, type Request, type Response } from "express";
import { JWTUtils } from "../../utils/JWTUtils";
import { Database } from "../../database/Database";
import { User } from "../../database/models/User";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientResponse } from "../../enums/ClientResponse";

export function requireAdmin(db: Database) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const payload = JWTUtils.getTokenPayload(req?.headers?.authorization);
      const user = await User.get(db, payload.id);

      if ((!user || !user.isAdmin()) && user.id !== Number(req.params.id)) {
        return res
          .status(HttpStatus.BAD_REQUEST)
          .send(ClientResponse.ACCESS_DENIED);
      }

      next();
    } catch (error) {
      next(error);
    }
  };
}

/**
 * Require admin permission if user id provided
 */
export function requireAdminIfIdProvided(db: Database) {
  return async (req: Request, res: Response, next: NextFunction) => {
    if (req.params.id) {
      return requireAdmin(db)(req, res, next);
    }

    next();
  };
}
