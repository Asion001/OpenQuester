import { EAgeRestriction } from "enums/game/EAgeRestriction";

export interface IGameCreateData {
  title: string;
  packageId: number;
  isPrivate: boolean;
  ageRestriction: EAgeRestriction;
  maxPlayers: number;
}
