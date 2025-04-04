import { PackageAnswerDTO } from "domain/types/dto/package/PackageAnswerDTO";
/**
 * Not used, but left there for reference
 */
export interface ChoiceQuestion {
  type: "choice";
  subType: "simple";
  showDelay: number; // in ms
  answers: PackageAnswerDTO[]; // Maximum 8 answers and minimum 2
}
