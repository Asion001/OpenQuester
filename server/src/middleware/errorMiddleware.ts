import { type NextFunction, type Request, type Response } from "express";

import { ErrorController } from "error/ErrorController";
import { OQError } from "error/OQError";
import { Logger } from "utils/Logger";

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
