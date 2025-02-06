import Joi from "joi";
import { type Request, type Response, type NextFunction } from "express";

import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { TranslateService as ts } from "services/text/TranslateService";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { ISession } from "types/ISession";
import { ValueUtils } from "utils/ValueUtils";
import { Environment } from "config/Environment";
import { ServerResponse } from "enums/ServerResponse";
import { Logger } from "utils/Logger";
import { Database } from "database/Database";
import { UserRepository } from "database/repositories/UserRepository";
import { SessionData } from "express-session";
import { AppDataSource } from "database/DataSource";

const isPublicEndpoint = (url: string, method: string): boolean => {
  const publicEndpoints = [
    "v1/auth",
    "v1/auth/discord",
    "v1/api-docs",
    "v1/users",
  ];

  const conditionalEndpoints = [
    { url: "v1/packages", method: "GET" },
    { url: "v1/games", method: "GET" },
    { url: "v1/file", method: "POST" },
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

  let session: ISession | undefined = undefined;
  try {
    session = await validateSession(req.session as SessionData);
  } catch (err: unknown) {
    return handleSessionValidationError(err, req, res);
  }

  if (!session || !session.userId) {
    return unauthorizedError(req, res);
  }

  // TODO: Get from cache when implemented
  const user = await UserRepository.getUserBySession(
    Database.getInstance(AppDataSource),
    req.session as SessionData
  );

  if (!user) {
    return unauthorizedError(req, res);
  }

  next();
};

export const refreshSession = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (req.session) {
    const now = new Date().getTime();
    req.session.cookie.expires = new Date(
      now + Environment.instance.SESSION_MAX_AGE
    );
  }
  next();
};

function validateSession(session: SessionData) {
  return new RequestDataValidator<ISession>(
    {
      userId: session.userId,
      expiresAt: new Date(String(session.cookie.expires)),
    },
    Joi.object({
      userId: Joi.number().required(),
      expiresAt: Joi.alternatives().try(Joi.string(), Joi.date()).required(),
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
