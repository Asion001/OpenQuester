import { AgeRestriction } from "enums/game/AgeRestriction";

export interface GameCreateDTO {
  title: string;
  packageId: number;
  isPrivate: boolean;
  ageRestriction: AgeRestriction;
  maxPlayers: number;
}
