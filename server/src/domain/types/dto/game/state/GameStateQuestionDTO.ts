import { PackageQuestionSubType } from "domain/types/dto/package/PackageQuestionDTO";

export interface GameStateQuestionDTO {
  order: number;
  price: number;
  isHidden: boolean;
  questionComment: string | null;
  subType: PackageQuestionSubType;
}
