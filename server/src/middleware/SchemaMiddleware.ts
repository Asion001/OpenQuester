import { type Request, type Response, type NextFunction } from "express";
import { ISchema } from "../interfaces/ISchema";
import { ErrorController } from "../error/ErrorController";
import { TranslateService as ts } from "../services/text/TranslateService";

type SchemaConstructor<T extends ISchema> = new (data: any) => T;

/**
 * Validates request body with provided schema constructor
 */
export function validateWithSchema<T extends ISchema>(
  Schema: SchemaConstructor<T>
) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const validator = new Schema(req.body);
      // Override request body to leave only validated correct data
      req.body = validator.validate(
        ts.parseHeader(req.headers["accept-language"])
      );
      next();
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
