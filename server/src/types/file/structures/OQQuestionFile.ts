import { OQFileContentStructure } from "types/file/structures/OQFileContentStructure";

export interface OQQuestionFile {
  file: OQFileContentStructure;
  displayTime: number;
  answerDelay: number;
}
