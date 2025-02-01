import { type Request, type Response, type NextFunction } from "express";
import { ErrorController } from "error/ErrorController";
import { Logger } from "utils/Logger";
import { OQError } from "error/OQError";

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
