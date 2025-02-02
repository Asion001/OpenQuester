import Joi from "joi";

import { PASSWORD_MAX_CHARS, PASSWORD_MIN_CHARS } from "constants/user";

export const loginScheme = () =>
  Joi.object({
    login: Joi.string()
      .pattern(/^[a-zA-Z0-9_]+$/)
      .required(),
    password: Joi.string()
      .required()
      .min(PASSWORD_MIN_CHARS)
      .max(PASSWORD_MAX_CHARS),
  });
