import { PackageQuestionDTO } from "./PackageQuestionDTO";

/**
 * This DTO represents data that sent when question is answered (contains answers)
 */
export type PackageQuestionAnswerDTO = Pick<
  PackageQuestionDTO,
  "answerText" | "answerFiles"
>;
