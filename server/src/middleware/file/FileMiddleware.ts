import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "utils/ValueUtils";
import { HttpStatus } from "enums/HttpStatus";
import { ClientResponse } from "enums/ClientResponse";
import { TranslateService as ts } from "services/text/TranslateService";

/** Ensures that content is valid JSON object */
export const verifyContentJSONMiddleware = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (!ValueUtils.isObject(content)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.WRONG_CONTENT, req.headers),
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.localize(ClientResponse.EMPTY_CONTENT, req.headers) });
  }

  return next();
};

export const validateFilename = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const filename = req.body.filename;

  if (ValueUtils.isBad(filename)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.FILENAME_REQUIRED, req.headers),
    });
  }

  if (!ValueUtils.isString(filename) || ValueUtils.isEmpty(filename)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.localize(ClientResponse.FILENAME_INVALID, req.headers),
    });
  }

  return next();
};
