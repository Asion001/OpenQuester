import { Database } from "database/Database";
import { GameDataManager } from "managers/game/GameDataManager";
import { IGameCreateData } from "types/game/IGameCreate";

export class CreateGameSchema extends GameDataManager {
  constructor(db: Database, data: IGameCreateData) {
    super(db);
    this._gameData = {
      title: data.title,
      isPrivate: data.isPrivate,
      packageId: data.packageId,
      maxPlayers: data.maxPlayers,
      ageRestriction: data.ageRestriction,
    };
    this._required = ["title", "isPrivate", "packageId", "maxPlayers"];
  }
}
