import { OQFileContentStructure } from "domain/types/file/structures/OQFileContentStructure";

export interface OQQuestionFile {
  file: OQFileContentStructure;
  displayTime: number;
  answerDelay: number;
}
