import { AgeRestriction } from "enums/game/AgeRestriction";
import { PackageListItemDTO } from "types/dto/game/items/PackageIListItemDTO";
import { ShortUserInfo } from "types/user/ShortUserInfo";

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
  package: PackageListItemDTO;
}
