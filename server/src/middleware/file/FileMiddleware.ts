import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientResponse } from "../../enums/ClientResponse";
import { TranslateService as ts } from "../../services/text/TranslateService";
import { Database } from "../../database/Database";
import { DependencyService } from "../../services/dependency/DependencyService";
import { JWTUtils } from "../../utils/JWTUtils";
import { Permissions } from "../../enums/Permissions";
import { Permission } from "../../database/models/Permission";
import { UserRepository } from "../../database/repositories/UserRepository";

/** Ensures that content is valid JSON object */
export const verifyContentJSONMiddleware = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (!ValueUtils.isObject(content)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.WRONG_CONTENT, req.headers),
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.localize(ClientResponse.EMPTY_CONTENT, req.headers) });
  }

  return next();
};

export const checkUserAccessToDeleteFile = (db: Database) => {
  return async (req: Request, res: Response, next: NextFunction) => {
    const filename = req.body.filename;
    const userId = JWTUtils.getTokenPayload(req.headers.authorization).id;
    const user = await UserRepository.getRepository(db).get(userId, {
      select: ["id"],
      relations: ["permissions"],
    });

    const usage = await DependencyService.getFileUsage(db, filename);
    if (usage.length < 1) {
      return next();
    }

    const usageIds: number[] = [];

    usage.map((u) => {
      if (u.user) {
        usageIds.push(u.user.id);
      }
      if (u.package?.author) {
        usageIds.push(u.package?.author.id);
      }
    });

    if (
      usageIds.includes(userId) ||
      (await Permission.checkPermission(user, Permissions.DELETE_FILE))
    ) {
      return next();
    }

    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.localize(ClientResponse.NO_PERMISSION, req.headers) });
  };
};

export const validateFilename = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const filename = req.body.filename;

  if (ValueUtils.isBad(filename)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.FILENAME_REQUIRED, req.headers),
    });
  }

  if (!ValueUtils.isString(filename) || ValueUtils.isEmpty(filename)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.FILENAME_INVALID, req.headers),
    });
  }

  return next();
};
