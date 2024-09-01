import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";
import { HttpStatus } from "../../enums/HttpStatus";
import { ApiResponse } from "../../enums/ApiResponse";

/** Ensures that content is valid JSON object */
export const verifyContentJSONMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (!ValueUtils.isObject(content)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ApiResponse.WRONG_CONTENT,
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ApiResponse.EMPTY_CONTENT });
  }

  return next();
};

export const validateFilename = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const filename = req.body.filename;

  if (ValueUtils.isBad(filename)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ApiResponse.FILENAME_REQUIRED });
  }

  if (!ValueUtils.isString(filename) || ValueUtils.isEmpty(filename)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ApiResponse.FILENAME_INVALID });
  }

  return next();
};
