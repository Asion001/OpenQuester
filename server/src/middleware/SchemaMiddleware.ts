import { type Request, type Response, type NextFunction } from "express";
import { ISchema } from "../interfaces/ISchema";
import { ErrorController } from "../error/ErrorController";
import { Database } from "../database/Database";

type SchemaConstructor<T extends ISchema> = new (db: Database, data: any) => T;

/**
 * Validates request body with provided schema constructor
 */
export function validateWithSchema<T extends ISchema>(
  db: Database,
  Schema: SchemaConstructor<T>
) {
  return async (req: Request, res: Response, next: NextFunction) => {
    try {
      const validator = new Schema(db, req.body);
      // Override request body to leave only validated correct data
      req.body = await validator.validate();
      next();
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };
}
