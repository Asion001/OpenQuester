import Joi from "joi";

export const filenameScheme = () =>
  Joi.object({
    filename: Joi.string()
      .pattern(/^[a-zA-Z0-9_]+$/)
      .required(),
  });
