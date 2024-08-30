import { OQFileStructure } from "./OQFileStructure";

export interface OQQuestionsStructure {
  price: number;
  type: string;
  hostHint: string;
  questionFile: OQFileStructure;
  answerFile: OQFileStructure;
}
