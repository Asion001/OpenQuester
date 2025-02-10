import Joi from "joi";

import { AgeRestriction } from "enums/game/AgeRestriction";

export const packIdScheme = () =>
  Joi.object({
    packId: Joi.number().required(),
  });

const file = Joi.object({
  sha256: Joi.string().required(),
  type: Joi.string().required(),
}).required();

const questions = Joi.array()
  .items(
    Joi.object({
      price: Joi.number().required(),
      type: Joi.string().required(),
      text: Joi.string(),
      hostHint: Joi.string(),
      playersHint: Joi.string(),
      answerText: Joi.string(),
      questionFile: Joi.object({
        file,
      }),
      answerFile: Joi.object({
        file,
      }),
    }).required()
  )
  .required();

const themes = Joi.array()
  .items(
    Joi.object({
      name: Joi.string().required(),
      comment: Joi.string().allow(null, ""),
      questions,
    }).required()
  )
  .required();

const rounds = Joi.array()
  .items(
    Joi.object({
      name: Joi.string(),
      themes,
    }).required()
  )
  .required();

const metadata = Joi.object({
  title: Joi.string().required(),
  createdAt: Joi.date().default(new Date()),
  logo: Joi.object({
    file: Joi.object({
      sha256: Joi.string().required(),
      type: Joi.string().required(),
    }),
  }),
  tags: Joi.array().items(Joi.string()),
  ageRestriction: Joi.valid(...Object.values(AgeRestriction))
    .allow(null)
    .default(AgeRestriction.NONE),
  language: Joi.string(),
}).required();

export const uploadPackageScheme = () =>
  Joi.object({
    content: Joi.object({
      metadata,
      rounds,
    }),
  });
