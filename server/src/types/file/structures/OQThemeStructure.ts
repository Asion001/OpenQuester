import { OQQuestionsStructure } from "types/file/structures/OQQuestionsStructure";

export interface OQThemeStructure {
  name: string;
  comment: string;
  questions: OQQuestionsStructure[];
}
