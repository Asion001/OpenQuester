import jwt from "jsonwebtoken";
import { type Request, type Response, type NextFunction } from "express";

import { Environment } from "../config/Environment";

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
    return res.status(401).json({ error: "Access denied" });

  try {
    jwt.verify(token, env.JWT_SECRET);
    next();
  } catch {
    res.status(401).json({ error: "Token invalid or expired" });
  }
};
