import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";

/** Ensures that content is valid JSON object */
export const verifyContentJSON = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (!ValueUtils.isObject(content)) {
    return res.status(400).send({
      error: "Wrong 'content' argument type, it should be a valid JSON object!",
    });
  }

  if (ValueUtils.isEmpty(content)) {
    return res.status(400).send({ error: "Content is empty!" });
  }

  return next();
};
