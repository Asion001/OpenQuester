import { type NextFunction, type Request, type Response } from "express";

import { BaseError } from "domain/errors/BaseError";
import { ErrorController } from "domain/errors/ErrorController";
import { Logger } from "infrastructure/utils/Logger";

export const errorMiddleware = async (
  err: Error | BaseError,
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
