import Joi from "joi";

import {
  GAME_MAX_PLAYERS,
  GAME_TITLE_MAX_CHARS,
  GAME_TITLE_MIN_CHARS,
} from "domain/constants/game";
import { LIMIT_MAX, LIMIT_MIN, OFFSET_MIN } from "domain/constants/pagination";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { GamePaginationOpts } from "domain/types/pagination/game/GamePaginationOpts";
import { PaginationOrder } from "domain/types/pagination/PaginationOpts";

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

export const gamePaginationScheme = () =>
  Joi.object<GamePaginationOpts>({
    sortBy: Joi.string()
      .valid("title", "createdAt", "isPrivate")
      .default("createdAt"),
    order: Joi.string()
      .valid(PaginationOrder.ASC, PaginationOrder.DESC)
      .default(PaginationOrder.ASC),
    limit: Joi.number().min(LIMIT_MIN).max(LIMIT_MAX).required(),
    offset: Joi.number().min(OFFSET_MIN).required(),
    createdAtMax: Joi.date().optional(),
    createdAtMin: Joi.date().optional(),
    isPrivate: Joi.boolean().optional(),
    titlePrefix: Joi.string().optional(),
  });
