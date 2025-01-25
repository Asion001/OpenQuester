import jwt from "jsonwebtoken";
import { type Request, type Response, type NextFunction } from "express";

import { Environment } from "config/Environment";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { TranslateService as ts } from "services/text/TranslateService";

export const verifyToken = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (
    req.url.includes("v1/auth") ||
    req.url.includes("v1/api-docs") ||
    req.url.includes("v1/games") ||
    req.url.includes("v1/users") ||
    (req.url.includes("v1/file") && req.method === "POST")
  ) {
    return next();
  }

  const env = Environment.instance;
  const header = req.headers.authorization;

  const scheme = header?.split(" ")[0];
  const token = header?.split(" ")[1];

  if (!token || scheme !== env.JWT_SCHEME)
    return res.status(HttpStatus.UNAUTHORIZED).json({
      error: ts.localize(ClientResponse.ACCESS_DENIED, req.headers),
    });

  try {
    jwt.verify(token, env.JWT_SECRET);
    next();
  } catch {
    return res.status(HttpStatus.UNAUTHORIZED).json({
      error: ts.localize(ClientResponse.INVALID_TOKEN, req.headers),
    });
  }
};

/**
 * This middleware proceed next if token is invalid. This means if user token is invalid,
 * user should be able to login / register.
 *
 * If user token is valid - he's already logged in and no need to continue execution
 */
export const validateTokenForAuth = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const header = req.header("Authorization");
  const env = Environment.instance;

  if (!header) return next();

  const scheme = header?.split(" ")[0];
  const token = header?.split(" ")[1];

  if (token && scheme == env.JWT_SCHEME) {
    try {
      jwt.verify(token, env.JWT_SECRET);
      return res.status(HttpStatus.BAD_REQUEST).send({
        error: ts.localize(ClientResponse.ALREADY_LOGGED_IN, req.headers),
      });
    } catch {
      // Token invalid - continue
    }
  }

  next();
};

/**
 * Validates that refresh token is present in request body
 */
export const validateRefresh = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (!req.body.refresh_token) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send(ts.localize(ClientResponse.NO_REFRESH, req.headers));
  }
  next();
};
