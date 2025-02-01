import Joi from "joi";

export const userRegisterScheme = () =>
  Joi.object({
    name: Joi.string()
      .min(3)
      .max(30)
      .pattern(/^[a-zA-Z0-9_]+$/)
      .required(),
    email: Joi.string().email().required(),
    password: Joi.string().required(),
    birthday: Joi.alternatives()
      .try(Joi.date(), Joi.string())
      .allow(null, undefined),
    avatar: Joi.string().allow(null, undefined),
  });
