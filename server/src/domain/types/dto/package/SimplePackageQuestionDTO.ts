import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";

export type SimplePackageQuestionDTO = Omit<
  PackageQuestionDTO,
  "answerText" | "answerFiles"
>;
