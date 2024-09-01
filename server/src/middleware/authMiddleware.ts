import jwt from "jsonwebtoken";
import { type Request, type Response, type NextFunction } from "express";

import { Environment } from "../config/Environment";
import { ApiResponse } from "../enums/ApiResponse";
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
      .json({ error: ApiResponse.ACCESS_DENIED });

  try {
    jwt.verify(token, env.JWT_SECRET);
    next();
  } catch {
    res
      .status(HttpStatus.UNAUTHORIZED)
      .json({ error: ApiResponse.INVALID_TOKEN });
  }
};
