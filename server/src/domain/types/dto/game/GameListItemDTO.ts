import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageListItemDTO } from "domain/types/dto/game/items/PackageIListItemDTO";
import { ShortUserInfo } from "domain/types/user/ShortUserInfo";

export interface GameListItemDTO {
  id: string;
  createdBy: ShortUserInfo;
  title: string;
  createdAt: Date;
  currentRound: number;
  isPrivate: boolean;
  ageRestriction: AgeRestriction;
  players: number;
  maxPlayers: number;
  startedAt: Date | null;
  finishedAt: Date | null;
  package: PackageListItemDTO;
}
