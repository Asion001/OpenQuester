import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientResponse } from "../../enums/ClientResponse";
import { TranslateService as ts } from "../../services/text/TranslateService";

/** Ensures that content is valid JSON object */
export const verifyContentJSONMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;
  const lang = req.headers["accept-language"];

  if (!ValueUtils.isObject(content)) {
    return res.status(HttpStatus.BAD_REQUEST).send({
      error: ts.translate(ClientResponse.WRONG_CONTENT, lang),
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.translate(ClientResponse.EMPTY_CONTENT, lang) });
  }

  return next();
};

export const validateFilename = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const filename = req.body.filename;
  const lang = req.headers["accept-language"];

  if (ValueUtils.isBad(filename)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.translate(ClientResponse.FILENAME_REQUIRED, lang) });
  }

  if (!ValueUtils.isString(filename) || ValueUtils.isEmpty(filename)) {
    return res
      .status(HttpStatus.BAD_REQUEST)
      .send({ error: ts.translate(ClientResponse.FILENAME_INVALID, lang) });
  }

  return next();
};
