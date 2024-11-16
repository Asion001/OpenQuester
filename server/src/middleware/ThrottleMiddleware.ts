import {
  type Request,
  type Response,
  type NextFunction,
  type RequestHandler,
} from "express";
import { JWTUtils } from "../utils/JWTUtils";
import { HttpStatus } from "../enums/HttpStatus";
import { ValueUtils } from "../utils/ValueUtils";
import { ClientResponse } from "../enums/ClientResponse";
import { TranslateService as ts } from "../services/text/TranslateService";

// Define rate limit configuration
const RATE_LIMIT = 10;
const RATE_LIMIT_DURATION = 60 * 1000;

// Storage for tracking requests
const userRequests: Map<number, number[]> = new Map();

export const throttleByUserMiddleware: RequestHandler = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const payload = JWTUtils.getTokenPayload(req.headers.authorization);
  const userId = ValueUtils.validateId(payload.id);

  if (!userId) {
    return res
      .status(HttpStatus.UNAUTHORIZED)
      .send({ error: ts.localize(ClientResponse.ACCESS_DENIED, req.headers) });
  }

  const now = Date.now();

  // Retrieve user request timestamps
  const timestamps = userRequests.get(userId) || [];

  // Remove timestamps outside the current window
  const recentTimestamps = timestamps.filter(
    (timestamp) => now - timestamp < RATE_LIMIT_DURATION
  );

  // Check if rate limit is exceeded
  if (recentTimestamps.length >= RATE_LIMIT) {
    return res.status(HttpStatus.TOO_MANY_REQUESTS).send({
      error: ts.localize(ClientResponse.TOO_MANY_REQUESTS, req.headers),
    });
  }

  // Add current timestamp to the list
  recentTimestamps.push(now);
  userRequests.set(userId, recentTimestamps);

  next();
};
