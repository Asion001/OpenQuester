import jwt from "jsonwebtoken";
import { type Request, type Response, type NextFunction } from "express";

import { Environment } from "../config/Environment";
import { ClientResponse } from "../enums/ClientResponse";
import { HttpStatus } from "../enums/HttpStatus";

export const verifyTokenMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (req.url.includes("v1/auth")) {
    return next();
  }
  const env = Environment.instance;
  const header = req.header("Authorization");

  const scheme = header?.split(" ")[0];
  const token = header?.split(" ")[1];

  if (!token || scheme !== env.JWT_SCHEME)
    return res
      .status(HttpStatus.UNAUTHORIZED)
      .json({ error: ClientResponse.ACCESS_DENIED });

  try {
    jwt.verify(token, env.JWT_SECRET);
    next();
  } catch {
    res
      .status(HttpStatus.UNAUTHORIZED)
      .json({ error: ClientResponse.INVALID_TOKEN });
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
      res.status(HttpStatus.BAD_REQUEST).send(ClientResponse.ALREADY_LOGGED_IN);
    } catch {
      // Token invalid - continue
    }
  }

  next();
};
