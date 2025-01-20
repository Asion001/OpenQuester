import { OQFileContentStructure } from "interfaces/file/structures/OQFileContentStructure";

export interface OQQuestionFile {
  file: OQFileContentStructure;
  displayTime: number;
  answerDelay: number;
}
