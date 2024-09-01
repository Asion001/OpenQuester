import { type Request, type Response, type NextFunction } from "express";
import { ValueUtils } from "../../utils/ValueUtils";
import { ErrorController } from "../../error/ErrorController";

export const validateParamsIDMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    ValueUtils.validateId(req.params.id);
  } catch (err: unknown) {
    const { message, code } = ErrorController.resolveError(err);
    return res.status(code).send({ error: message });
  }
  next();
};
