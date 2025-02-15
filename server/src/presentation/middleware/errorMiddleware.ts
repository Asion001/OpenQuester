import { type NextFunction, type Request, type Response } from "express";

import { ErrorController } from "domain/errors/ErrorController";
import { OQError } from "domain/errors/OQError";
import { Logger } from "infrastructure/utils/Logger";

export const errorMiddleware = async (
  err: Error | OQError,
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (err) {
    const { message, code } = await ErrorController.resolveError(err);
    res.status(code).json({ error: message });
  } else {
    Logger.gray(`Error middleware hit without error: ${err}`);
    return next();
  }
};
