import Joi from "joi";

export const socketAuthScheme = Joi.object({
  socketId: Joi.string().required(),
  language: Joi.string().length(2).required(),
});
