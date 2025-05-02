import { type NextFunction, type Request, type Response } from "express";

/**
 * Wrapper around executed function to avoid copy-pasting of this code:
 *
 * ```
 * try {
 *   // Endpoint related execution
 * } catch (err: unknown) {
 *   next(err)
 * }
 * ```
 * This wrapper automatically pass all errors that were caught during execution
 * into errorMiddleware
 */
export const asyncHandler =
  (fn: (_req: Request, _res: Response, _next: NextFunction) => Promise<any>) =>
  async (req: Request, res: Response, next: NextFunction) => {
    try {
      await fn(req, res, next);
    } catch (err) {
      // delegate errors to next
      next(err);
    }
  };
