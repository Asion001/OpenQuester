import { OQQuestionsStructure } from "interfaces/file/structures/OQQuestionsStructure";

export interface OQThemeStructure {
  name: string;
  comment: string;
  questions: OQQuestionsStructure[];
}
