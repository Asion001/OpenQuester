import Joi from "joi";

export const filenameScheme = () =>
  Joi.object({
    filename: Joi.string()
      .pattern(/\b[a-f0-9]+\b/)
      .required(),
  });
