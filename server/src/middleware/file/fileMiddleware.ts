import { type Request, type Response, type NextFunction } from "express";

import { ValueUtils } from "../../utils/ValueUtils";

/** Ensures that content is valid JSON object */
export const verifyContentJSON = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const content = req.body?.content;

  if (ValueUtils.isEmpty(content)) {
    return res
      .status(400)
      .send({ error: "Wrong 'content' argument format or content is empty!" });
  }

  if (ValueUtils.isObject(content)) {
    return next();
  }

  return res.status(400).send({
    error: "Wrong 'content' argument type, it should be a valid JSON object!",
  });
  // TODO: String parsing to object, remove if redundant (need to be discussed)
  // if (ValueUtils.isString(content)) {
  //   try {
  //     // Overwrite content with valid object
  //     (req as OQRequestWithContent).content = JSON.parse(content as string);
  //     return next();
  //   } catch (err: any) {
  //     return res
  //       .status(400)
  //       .send(`Error during content parsing: ${err.message}`);
  //   }
  // }
};
