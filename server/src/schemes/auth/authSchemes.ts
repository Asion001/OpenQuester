import Joi from "joi";

export const loginScheme = () =>
  Joi.object({
    login: Joi.string()
      .pattern(/^[a-zA-Z0-9_]+$/)
      .required(),
    password: Joi.string().required(),
  });
