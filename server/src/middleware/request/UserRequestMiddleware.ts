import { type Request, type Response, type NextFunction } from "express";
import { ValueUtils } from "../../utils/ValueUtils";
import { ErrorController } from "../../error/ErrorController";

/**
 * Validate id from parameters if it's provided
 */
export const validateParamsIDMiddleware = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (req.params.id) {
    try {
      ValueUtils.validateId(req.params.id);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  }
  next();
};
