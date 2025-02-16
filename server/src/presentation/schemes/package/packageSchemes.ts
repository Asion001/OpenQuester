import Joi from "joi";

import { AgeRestriction } from "domain/enums/game/AgeRestriction";

export const packIdScheme = () =>
  Joi.object({
    packId: Joi.number().required(),
  });

const file = Joi.object({
  md5: Joi.string().required(),
  type: Joi.string().required(),
}).required();

const questions = Joi.array()
  .items(
    Joi.object({
      price: Joi.number().required(),
      type: Joi.string().required(),
      text: Joi.string().allow(null),
      hostHint: Joi.string().allow(null),
      playersHint: Joi.string().allow(null),
      answerText: Joi.string().allow(null),
      questionFile: Joi.object({
        file,
      }).allow(null),
      answerFile: Joi.object({
        file,
      }).allow(null),
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
    file,
  }).allow(null),
  tags: Joi.array().items(Joi.string()).allow(null),
  ageRestriction: Joi.valid(...Object.values(AgeRestriction))
    .allow(null)
    .default(AgeRestriction.NONE),
  language: Joi.string().allow(null),
}).required();

export const uploadPackageScheme = () =>
  Joi.object({
    content: Joi.object({
      metadata,
      rounds,
    }),
  });
