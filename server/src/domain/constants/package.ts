import { Package } from "infrastructure/database/models/package/Package";

export const PACKAGE_SELECT_FIELDS: Array<keyof Package> = [
  "id",
  "title",
  "description",
  "age_restriction",
  "created_at",
  "language",
];

export const PACKAGE_SELECT_RELATIONS: string[] = [
  "rounds",
  "rounds.themes",
  "rounds.themes.questions",
  "rounds.themes.questions.questionFiles",
  "rounds.themes.questions.questionFiles.file",
  "rounds.themes.questions.answerFiles",
  "rounds.themes.questions.answerFiles.file",
  "rounds.themes.questions.answers",
  "rounds.themes.questions.answers.file",
  "logo",
  "author",
  "tags",
];
