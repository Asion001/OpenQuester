import Joi from "joi";

import {
  GAME_MAX_PLAYERS,
  GAME_TITLE_MAX_CHARS,
  GAME_TITLE_MIN_CHARS,
} from "domain/constants/game";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";

export const gameIdScheme = () =>
  Joi.object({
    gameId: Joi.string()
      .pattern(/^[A-Z0-9]+$/)
      .required(),
  });

export const createGameScheme = () =>
  Joi.object({
    title: Joi.string()
      .min(GAME_TITLE_MIN_CHARS)
      .max(GAME_TITLE_MAX_CHARS)
      .required(),
    packageId: Joi.number().required(),
    isPrivate: Joi.boolean().required(),
    ageRestriction: Joi.valid(...Object.values(AgeRestriction)).required(),
    maxPlayers: Joi.number().max(GAME_MAX_PLAYERS).required(),
  });
