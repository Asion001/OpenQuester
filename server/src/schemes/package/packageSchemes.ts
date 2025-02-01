import { EAgeRestriction } from "enums/game/EAgeRestriction";
import Joi from "joi";

export const packIdScheme = () =>
  Joi.object({
    packId: Joi.number().required(),
  });

export const uploadPackageScheme = () =>
  Joi.object({
    content: Joi.object({
      metadata: Joi.object({
        title: Joi.string().required(),
        createdAt: Joi.date().default(new Date()),
        logo: Joi.object({
          file: Joi.object({
            sha256: Joi.string().required(),
            type: Joi.string().required(),
          }),
        }),
        tags: Joi.array().items(Joi.string()),
        ageRestriction: Joi.valid(...Object.values(EAgeRestriction))
          .allow(null)
          .default(EAgeRestriction.NONE),
        language: Joi.string(),
      }).required(),
      rounds: Joi.array()
        .items(
          Joi.object({
            name: Joi.string(),
            themes: Joi.array().items(
              Joi.object({
                name: Joi.string().required(),
                comment: Joi.string(),
                questions: Joi.array()
                  .items(
                    Joi.object({
                      price: Joi.number().required(),
                      type: Joi.string().required(),
                      text: Joi.string(),
                      hostHint: Joi.string(),
                      playersHint: Joi.string(),
                      answerText: Joi.string(),
                      questionFile: Joi.object({
                        file: Joi.object({
                          sha256: Joi.string().required(),
                          type: Joi.string().required(),
                        }).required(),
                      }),
                      answerFile: Joi.object({
                        file: Joi.object({
                          sha256: Joi.string().required(),
                          type: Joi.string().required(),
                        }).required(),
                      }),
                    }).required()
                  )
                  .required(),
              }).required()
            ),
          }).required()
        )
        .required(),
    }),
  });
