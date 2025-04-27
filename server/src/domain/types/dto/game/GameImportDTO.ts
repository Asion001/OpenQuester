import { Player } from "domain/entities/game/Player";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageDTO } from "../package/PackageDTO";
import { GameStateDTO } from "./state/GameStateDTO";

export interface GameImportDTO {
  id: string;
  title: string;
  createdBy: number;
  createdAt: Date;
  isPrivate: boolean;
  ageRestriction: AgeRestriction;
  maxPlayers: number;
  startedAt: Date | null;
  finishedAt: Date | null;
  package: PackageDTO;
  roundsCount: number;
  questionsCount: number;
  players: Player[];
  gameState: GameStateDTO;
}
