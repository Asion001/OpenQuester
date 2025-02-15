import Joi from "joi";

import {
  USER_NAME_MAX_CHARS,
  USER_NAME_MIN_CHARS,
} from "domain/constants/user";
import { UpdateUserInputDTO } from "domain/types/user/UpdateUserDataInput";

export const userIdScheme = () =>
  Joi.object({
    userId: Joi.number().min(0).required(),
  });

export const userUpdateScheme = () =>
  Joi.object<UpdateUserInputDTO>({
    id: Joi.number().min(0).allow(null),
    email: Joi.string().email().allow(null),
    username: Joi.string()
      .min(USER_NAME_MIN_CHARS)
      .max(USER_NAME_MAX_CHARS)
      .pattern(/^[a-zA-Z0-9_-]+$/)
      .allow(null),
    avatar: Joi.string().allow(null),
    birthday: Joi.alternatives().try(Joi.date(), Joi.string()).allow(null),
  });
