import { type Request, type Response, type NextFunction } from "express";
import { Logger } from "../../utils/Logger";
import { ValueUtils } from "../../utils/ValueUtils";
import { Environment } from "../../config/Environment";

export const logMiddleware = async (
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
        log(req, body);
      } catch {
        // Avoid all unexpected errors, for example with JSON.stringify
      }
      isSent = true;
    }
    return originalSend.call(this, body);
  };

  next();
};

function log(req: Request, responseBody: any) {
  const level = Environment.instance.LOG_LEVEL;

  ///////////////// Debug logs /////////////////
  if (Logger.checkAccess(level, "debug")) {
    // Log request path
    Logger.debug(`Request path: ${JSON.stringify(req.originalUrl)}`);

    ///////////////// Verbose logs /////////////////
    if (Logger.checkAccess(level, "verbose")) {
      // Log query params
      Logger.debug(`Query parameters: ${JSON.stringify(req.query)}`);

      // Log headers
      if (!ValueUtils.isEmpty(req.headers)) {
        Logger.debug(`Request headers: ${JSON.stringify(req.headers)}`);
      }

      // Log request body
      if (!ValueUtils.isEmpty(req.body)) {
        Logger.debug(`Request body: ${JSON.stringify(req.body)}`);
      }

      // Log response body
      Logger.debug(`Response body: ${JSON.stringify(responseBody)}`);
    }

    console.log("\n");
  }
}
