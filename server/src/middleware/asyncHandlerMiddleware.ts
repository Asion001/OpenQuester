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
 * This wrapper automatically parse all errors that were caught during execution
 * into errorMiddleware
 */
export const asyncHandler =
  (fn: (req: Request, res: Response, next: NextFunction) => Promise<any>) =>
  (req: Request, res: Response, next: NextFunction) =>
    Promise.resolve(fn(req, res, next)).catch(next);
