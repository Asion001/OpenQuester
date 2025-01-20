import { OQAnswerFile } from "interfaces/file/structures/OQAnswerFile";
import { OQQuestionFile } from "interfaces/file/structures/OQQuestionFile";

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
