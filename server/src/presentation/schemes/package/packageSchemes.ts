import Joi from "joi";

import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageFileType } from "domain/enums/package/PackageFileType";
import { PackageQuestionType } from "domain/enums/package/QuestionType";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";
import { PackageRoundDTO } from "domain/types/dto/package/PackageRoundDTO";
import { PackageThemeDTO } from "domain/types/dto/package/PackageThemeDTO";
import { PackageQuestionTransferType } from "domain/types/package/PackageQuestionTransferType";

// File schema for basic file properties
const fileSchema = Joi.object({
  md5: Joi.string().required(),
  type: Joi.string()
    .valid(...Object.values(PackageFileType))
    .required(),
});

// Schema for package files (questionFiles, answerFiles)
const packageFileSchema = Joi.object({
  file: fileSchema.required(),
  displayTime: Joi.number().required(),
});

// Base question schema with common fields
const baseQuestionSchema = Joi.object<PackageQuestionDTO>({
  price: Joi.number().required(),
  type: Joi.string()
    .valid(...Object.values(PackageQuestionType))
    .required(),
  isHidden: Joi.when("type", {
    is: "hidden",
    then: Joi.boolean().valid(true).required(), // Must be true
    otherwise: Joi.boolean().allow(null).default(false), // Default false for others
  }),
  text: Joi.string().allow(null),
  answerHint: Joi.string().allow(null),
  answerText: Joi.string().allow(null),
  answerDelay: Joi.number().allow(null).default(5000),
  questionComment: Joi.string().allow(null),
  questionFiles: Joi.array().items(packageFileSchema).allow(null),
  answerFiles: Joi.array().items(packageFileSchema).allow(null),
});

// Full question schema with type-specific fields
const questionSchema = baseQuestionSchema.keys({
  subType: Joi.when("type", {
    is: "stake",
    then: Joi.string().valid("simple", "forEveryone").required(),
    otherwise: Joi.when("type", {
      is: "secret",
      then: Joi.string().valid("simple", "customPrice").required(),
      otherwise: Joi.when("type", {
        is: "noRisk",
        then: Joi.string().valid("simple", "forEveryone").required(),
        otherwise: Joi.when("type", {
          is: "choice",
          then: Joi.string().valid("simple").required(),
          otherwise: Joi.when("type", {
            is: "hidden",
            then: Joi.forbidden(), // No subType for hidden
            otherwise: Joi.forbidden(),
          }),
        }),
      }),
    }),
  }),
  maxPrice: Joi.when("type", {
    is: "stake",
    then: Joi.number().required(),
    otherwise: Joi.forbidden(),
  }),
  allowedPrices: Joi.when("type", {
    is: "secret",
    then: Joi.when("subType", {
      is: "customPrice",
      then: Joi.array().items(Joi.number()).min(2).max(5).required(),
      otherwise: Joi.forbidden(),
    }),
    otherwise: Joi.forbidden(),
  }),
  transferType: Joi.when("type", {
    is: "secret",
    then: Joi.string()
      .valid(...Object.values(PackageQuestionTransferType))
      .required(),
    otherwise: Joi.forbidden(),
  }),
  priceMultiplier: Joi.when("type", {
    is: "noRisk",
    then: Joi.number().required(),
    otherwise: Joi.forbidden(),
  }),
  showDelay: Joi.when("type", {
    is: "choice",
    then: Joi.number().required(),
    otherwise: Joi.forbidden(),
  }),
  answers: Joi.when("type", {
    is: "choice",
    then: Joi.array()
      .items(
        Joi.object({
          text: Joi.string().allow(null),
          file: fileSchema.allow(null),
        })
      )
      .min(2)
      .max(8)
      .required(),
    otherwise: Joi.forbidden(),
  }),
});

const questions = Joi.array().items(questionSchema).required();

// Themes schema
const themes = Joi.array()
  .items(
    Joi.object<PackageThemeDTO>({
      name: Joi.string().required(),
      description: Joi.string().allow(null),
      questions,
    }).required()
  )
  .required();

// Rounds schema
const rounds = Joi.array()
  .items(
    Joi.object<PackageRoundDTO>({
      name: Joi.string().required(),
      description: Joi.string().allow(null),
      themes,
    }).required()
  )
  .required();

// Top-level upload package schema
export const uploadPackageScheme = () =>
  Joi.object<Record<"content", PackageDTO>>({
    content: Joi.object({
      title: Joi.string().required(),
      description: Joi.string().allow(null),
      createdAt: Joi.date().default(new Date()).allow(null),
      language: Joi.string().allow(null),
      ageRestriction: Joi.string()
        .valid(...Object.values(AgeRestriction))
        .required(),
      logo: Joi.object({
        file: fileSchema.required(),
      }).allow(null),
      tags: Joi.array()
        .items(
          Joi.object({
            tag: Joi.string(),
          })
        )
        .allow(null),
      rounds,
    }).required(),
  });

export const packIdScheme = () =>
  Joi.object({
    packId: Joi.number().required(),
  });
