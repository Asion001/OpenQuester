import Joi from "joi";

export const socketAuthScheme = Joi.object({
  socketId: Joi.string().required(),
});
