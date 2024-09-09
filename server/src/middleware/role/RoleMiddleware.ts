import { type NextFunction, type Request, type Response } from "express";
import { JWTUtils } from "../../utils/JWTUtils";
import { Database } from "../../database/Database";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientResponse } from "../../enums/ClientResponse";
import { UserRepository } from "../../database/repositories/UserRepository";

export function requireAdmin(db: Database) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const userRepository = UserRepository.getRepository(db);
      const payload = JWTUtils.getTokenPayload(req?.headers?.authorization);
      const user = await userRepository.get(payload.id);

      if ((!user || !user.isAdmin()) && user.id !== Number(req.params.id)) {
        return res
          .status(HttpStatus.BAD_REQUEST)
          .send({ error: ClientResponse.ACCESS_DENIED });
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
