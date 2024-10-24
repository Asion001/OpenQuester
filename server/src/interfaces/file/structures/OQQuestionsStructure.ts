import { OQAnswerFile } from "./OQAnswerFile";
import { OQQuestionFile } from "./OQQuestionFile";

export interface OQQuestionsStructure {
  price: number;
  type: string;
  text: string;
  hostHint: string;
  playersHint: string;
  answerText: string;
  questionFile: OQQuestionFile;
  answerFile: OQAnswerFile;
}
