import { type NextFunction, type Request, type Response } from "express";
import Joi from "joi";

import { TranslateService as ts } from "application/services/text/TranslateService";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ServerResponse } from "domain/enums/ServerResponse";
import { Session } from "domain/types/auth/session";
import { SessionDTO } from "domain/types/dto/auth/SessionDTO";
import { Environment, EnvType } from "infrastructure/config/Environment";
import { Database } from "infrastructure/database/Database";
import { AppDataSource } from "infrastructure/database/DataSource";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

const isPublicEndpoint = (url: string, method: string): boolean => {
  const publicEndpoints = ["v1/auth", "v1/api-docs", "v1/users", "v1/files"];

  if (Environment.instance.ENV === EnvType.DEV) {
    publicEndpoints.push("v1/dev");
  }

  const conditionalEndpoints = [
    { url: "v1/packages", method: "GET" },
    { url: "v1/games", method: "GET" },
  ];

  return (
    publicEndpoints.some((endpoint) => url.includes(endpoint)) ||
    conditionalEndpoints.some(
      (endpoint) => url.includes(endpoint.url) && method === endpoint.method
    )
  );
};

export const verifySession = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (isPublicEndpoint(req.url, req.method)) {
    return next();
  }

  const dateExpired = new Date(String(req.session.cookie.expires)) < new Date();

  if (
    !req.session.userId ||
    dateExpired ||
    !ValueUtils.isNumeric(req.session.userId)
  ) {
    return unauthorizedError(req, res);
  }

  let session: SessionDTO;
  try {
    session = await validateSession(req.session);
  } catch (err: unknown) {
    return handleSessionValidationError(err, req, res);
  }

  if (!session || !session.userId) {
    return unauthorizedError(req, res);
  }

  // TODO: Get from cache when implemented
  const user = await UserRepository.getUserByRequest(
    Database.getInstance(AppDataSource),
    req,
    {
      select: USER_SELECT_FIELDS,
      relations: ["avatar", "permissions"],
      relationSelects: {
        avatar: ["id", "filename"],
        permissions: ["id", "name"],
      },
    }
  );

  if (!user) {
    return unauthorizedError(req, res);
  }

  // Refresh session expire time
  req.session.touch();
  req.user = user;

  next();
};

function validateSession(session: Session) {
  return new RequestDataValidator<SessionDTO>(
    {
      userId: session.userId,
    },
    Joi.object({
      userId: Joi.number().required(),
    })
  ).validate();
}

function handleSessionValidationError(
  err: unknown,
  req: Request,
  res: Response
) {
  if (err instanceof Error) {
    return unauthorizedError(req, res);
  }
  Logger.error(
    `Unknown error during session validation: ${JSON.stringify(err)}`
  );

  return res
    .send({ error: ServerResponse.INTERNAL_SERVER_ERROR })
    .status(HttpStatus.INTERNAL);
}

function unauthorizedError(req: Request, res: Response) {
  return res.status(HttpStatus.UNAUTHORIZED).json({
    error: ts.localize(ClientResponse.ACCESS_DENIED, req.headers),
  });
}
