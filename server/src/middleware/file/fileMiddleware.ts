import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientResponse } from "../../enums/ClientResponse";

/** Ensures that content is valid JSON object */
export const verifyContentJSONMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (!ValueUtils.isObject(content)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ClientResponse.WRONG_CONTENT,
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ClientResponse.EMPTY_CONTENT });
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
      .send({ error: ClientResponse.FILENAME_REQUIRED });
  }

  if (!ValueUtils.isString(filename) || ValueUtils.isEmpty(filename)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ClientResponse.FILENAME_INVALID });
  }

  return next();
};
