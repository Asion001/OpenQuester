import { OQQuestionsStructure } from "./OQQuestionsStructure";

export interface OQThemeStructure {
  name: string;
  comment: string;
  questions: OQQuestionsStructure[];
}
