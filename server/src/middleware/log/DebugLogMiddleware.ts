import { type Request, type Response, type NextFunction } from "express";
import { Logger } from "../../utils/Logger";
import { ValueUtils } from "../../utils/ValueUtils";

export const debugLogMiddleware = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  // Capture the original send method to log the response body
  const originalSend = res.send;
  let isSent = false;

  res.send = function (body: any) {
    // TODO: Why double logging happens? Fix when solution found
    // Avoid double logging
    if (!isSent) {
      // Log the request path and arguments
      try {
        debugLog(req, body);
      } catch {
        // Avoid all unexpected errors, for example with JSON.stringify
      }
      isSent = true;
    }
    return originalSend.call(this, body);
  };

  next();
};

function debugLog(req: Request, responseBody: any) {
  Logger.debug(`-------------------------`);
  Logger.debug(`Request path: ${JSON.stringify(req.originalUrl)}`);

  if (!ValueUtils.isEmpty(req.query)) {
    Logger.debug(`Query parameters: ${JSON.stringify(req.query)}`);
  }
  if (!ValueUtils.isEmpty(req.body)) {
    Logger.debug(`Request body: ${JSON.stringify(req.body)}`);
  }

  Logger.debug(`Response body: ${JSON.stringify(responseBody)}`);
  Logger.debug(`-------------------------`);
}
