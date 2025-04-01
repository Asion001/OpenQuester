import { PackageQuestionType } from "domain/enums/package/QuestionType";
import { PackageQuestionTransferType } from "domain/types/package/PackageQuestionTransferType";
import { PackageTheme } from "infrastructure/database/models/package/PackageTheme";

export interface PackageQuestionImport {
  theme: PackageTheme;
  price: number;
  type: PackageQuestionType;
  isHidden: boolean;
  text: string | null;
  answerHint: string | null;
  answerText: string | null;
  answerDelay: number | null;
  questionComment: string | null;
  subType: string | null;
  maxPrice: number | null;
  allowedPrices: number[] | null;
  transferType: PackageQuestionTransferType | null;
  priceMultiplier: number | null;
  showDelay: number | null;
}
