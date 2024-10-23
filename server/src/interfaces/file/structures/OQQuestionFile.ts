import { OQFileContentStructure } from "./OQFileContentStructure";

export interface OQQuestionFile {
  file: OQFileContentStructure;
  displayTime: number;
  answerDelay: number;
}
