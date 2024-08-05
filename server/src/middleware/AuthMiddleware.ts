import jwt from "jsonwebtoken";
import express from "express";
import { Environment } from "../config/Environment";

export const verifyTokenMiddleware = (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  if (req.url.includes("v1/auth")) {
    return next();
  }
  const header = req.header("Authorization");

  const scheme = header?.split(" ")[0];
  const token = header?.split(" ")[1];

  if (!token || scheme !== Environment.JWT_SCHEME)
    return res.status(401).json({ error: "Access denied" });

  try {
    jwt.verify(token, Environment.JWT_SECRET);
    next();
  } catch (error) {
    res.status(401).json({ error: "Token invalid or expired" });
  }
};
