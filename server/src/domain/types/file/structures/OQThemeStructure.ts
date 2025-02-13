import { OQQuestionsStructure } from "domain/types/file/structures/OQQuestionsStructure";

export interface OQThemeStructure {
  name: string;
  comment: string;
  questions: OQQuestionsStructure[];
}
