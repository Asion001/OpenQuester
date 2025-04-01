import { PackageQuestionType } from "domain/enums/package/QuestionType";
import { PackageAnswerDTO } from "domain/types/dto/package/PackageAnswerDTO";
import { PackageAnswerFileDTO } from "domain/types/dto/package/PackageAnswerFileDTO";
import { PackageQuestionFileDTO } from "domain/types/dto/package/PackageQuestionFileDTO";
import { PackageQuestionTransferType } from "domain/types/package/PackageQuestionTransferType";

export type QuestionSubType =
  | "simple"
  | "customPrice"
  | "empty"
  | "forEveryone";

export interface PackageQuestionDTO {
  type: PackageQuestionType;
  price: number;
  isHidden: boolean;
  text: string | null;
  answerHint: string | null;
  answerText: string | null;
  answerDelay: number;
  questionComment: string | null;
  questionFiles: PackageQuestionFileDTO[] | null;
  answerFiles: PackageAnswerFileDTO[] | null;
  subType: QuestionSubType;
  maxPrice: number | null;
  allowedPrices: number[] | null;
  transferType: PackageQuestionTransferType | null;
  priceMultiplier: number | null;
  showDelay: number | null;
  answers: PackageAnswerDTO[] | null;
}
