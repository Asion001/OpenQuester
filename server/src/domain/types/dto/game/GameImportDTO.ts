import { Player } from "domain/entities/game/Player";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageDTO } from "../package/PackageDTO";

export interface GameImportDTO {
  id: string;
  title: string;
  createdBy: number;
  createdAt: Date;
  isPrivate: boolean;
  ageRestriction: AgeRestriction;
  currentRound: number;
  maxPlayers: number;
  startedAt: Date | null;
  package: PackageDTO;
  roundsCount: number;
  questionsCount: number;
  players: Player[];
}
