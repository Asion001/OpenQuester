import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { User } from "infrastructure/database/models/User";

export enum PackageFileType {
  VIDEO = "video",
  IMAGE = "image",
  GIF = "gif",
}

export enum PackageQuestionType {
  STAKE = "stake",
  MYSTERY = "mystery",
  FOR_ALL = "forAll",
}

export interface PackageFile {
  id: number;
  sha256: string;
  link?: string;
}

export interface PackageLogoFile {
  file: PackageFile;
  type: PackageFileType;
}

export interface PackageMetadata {
  id: number;
  title: string;
  createdAt: Date;
  language?: string;
  comment?: string;
  ageRestriction: AgeRestriction;
  authors?: number;
  logo: PackageLogoFile;
}

export interface PackageTag {
  id: number;
  tag: string;
}

export interface PackageQuestionFile {
  file: PackageFile;
  type: PackageFileType;
  displayTime: number;
  answerDelay: number;
}

export interface PackageAnswerFile {
  file: PackageFile;
  type: PackageFileType;
  displayTime: number;
}

export interface PackageQuestion {
  id: number;
  price: number;
  type: string;
  text: string;
  hostHint?: string;
  playersHint?: string;
  answerText?: string;
  questionFile: PackageQuestionFile;
  answerFile: PackageAnswerFile;
}

export interface PackageTheme {
  id: number;
  name: string;
  comment?: string;
  questions: PackageQuestion[];
}

export interface PackageRound {
  id: number;
  name: string;
  themes: PackageTheme[];
}

export interface Package {
  id: number;
  createdAt: Date;
  author: User;
  metadata: PackageMetadata;
  rounds: PackageRound[];
  tags: PackageTag[];
}
