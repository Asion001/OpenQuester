import { type NextFunction, type Request, type Response } from "express";

import { TranslateService as ts } from "application/services/text/TranslateService";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

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
