import { OQAnswerFile } from "domain/types/file/structures/OQAnswerFile";
import { OQQuestionFile } from "domain/types/file/structures/OQQuestionFile";

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
