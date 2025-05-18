import { type NextFunction, type Request, type Response } from "express";

import { Environment } from "infrastructure/config/Environment";
import { Logger } from "infrastructure/utils/Logger";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

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

  if (Logger.checkAccess(level, "debug")) {
    Logger.debug(
      `[${req.session.userId ?? "GUEST"}] [${req.method}]: ${JSON.stringify(
        req.originalUrl
      )}`
    );

    if (Logger.checkAccess(level, "verbose")) {
      Logger.debug(`Query parameters: ${format(req.query)}`);

      if (!ValueUtils.isEmpty(req.headers)) {
        Logger.debug(`Request headers: ${JSON.stringify(req.headers)}`);
      }

      if (!ValueUtils.isEmpty(req.body)) {
        Logger.debug(`Request body: ${format(req.body)}`);
      }

      Logger.debug(`Response body: ${format(responseBody)}`);
      console.log("\n");
    }
  }
}

function format(value: unknown, maxLength = 500) {
  const str = JSON.stringify(value);

  if (str.length <= maxLength) return str;
  const ellipsis = "...";
  return str.substring(0, maxLength) + ellipsis;
}
