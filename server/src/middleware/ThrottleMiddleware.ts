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
const requests: Map<number, number[]> = new Map();

export const throttleMiddleware: RequestHandler = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  let throttleValue: any;
  try {
    const payload = JWTUtils.getTokenPayload(req.headers.authorization);
    throttleValue = ValueUtils.validateId(payload.id);
  } catch {
    throttleValue = req.ip;
  }

  if (!throttleValue) {
    return res
      .status(HttpStatus.UNAUTHORIZED)
      .send({ error: ts.localize(ClientResponse.ACCESS_DENIED, req.headers) });
  }

  const now = Date.now();

  const timestamps = requests.get(throttleValue) || [];

  const recentTimestamps = timestamps.filter(
    (timestamp) => now - timestamp < RATE_LIMIT_DURATION
  );

  if (recentTimestamps.length >= RATE_LIMIT) {
    return res.status(HttpStatus.TOO_MANY_REQUESTS).send({
      error: ts.localize(ClientResponse.TOO_MANY_REQUESTS, req.headers),
    });
  }

  recentTimestamps.push(now);
  requests.set(throttleValue, recentTimestamps);

  next();
};
