import Joi from "joi";

import { USER_NAME_MAX_CHARS, USER_NAME_MIN_CHARS } from "constants/user";
import { IUpdateUserDataInput } from "types/user/IUpdateUserDataInput";
import { IRegisterUserInput } from "types/user/IRegisterUserInput";

export const userRegisterScheme = () =>
  Joi.object<IRegisterUserInput>({
    name: Joi.string()
      .min(USER_NAME_MIN_CHARS)
      .max(USER_NAME_MAX_CHARS)
      .pattern(/^[a-zA-Z0-9_]+$/)
      .required(),
    email: Joi.string().email().required(),
    password: Joi.string().required(),
    birthday: Joi.alternatives()
      .try(Joi.date(), Joi.string())
      .allow(null, undefined),
    avatar: Joi.string().allow(null, undefined),
  });

export const userIdScheme = () =>
  Joi.object({
    userId: Joi.number().min(0).required(),
  });

export const userUpdateScheme = () =>
  Joi.object<IUpdateUserDataInput>({
    id: Joi.number().min(0).allow(null, undefined),
    email: Joi.string().email().allow(null, undefined),
    name: Joi.string()
      .min(USER_NAME_MIN_CHARS)
      .max(USER_NAME_MAX_CHARS)
      .pattern(/^[a-zA-Z0-9_]+$/)
      .allow(null, undefined),
    avatar: Joi.string().allow(null, undefined),
    birthday: Joi.alternatives()
      .try(Joi.date(), Joi.string())
      .allow(null, undefined),
  });
