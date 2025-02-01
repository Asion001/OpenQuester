import { EAgeRestriction } from "enums/game/EAgeRestriction";
import Joi from "joi";

export const gameIdScheme = () =>
  Joi.object({
    gameId: Joi.string()
      .pattern(/^[A-Z0-9]+$/)
      .required(),
  });

export const createGameScheme = () =>
  Joi.object({
    title: Joi.string().max(70).required(),
    packageId: Joi.number().required(),
    isPrivate: Joi.boolean().required(),
    ageRestriction: Joi.valid(...Object.values(EAgeRestriction)).required(),
    maxPlayers: Joi.number().max(15).required(),
  });
