import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { PlayerMeta } from "domain/types/socket/game/PlayerMeta";

export class Player {
  private readonly _user: UserDTO;
  private _slot: number | null;
  private _role: PlayerRole;
  private _status: PlayerGameStatus;
  private _restrictionData: {
    muted: boolean;
    restricted: boolean;
    banned: boolean;
  };
  private _score: number = 0;

  constructor(data: {
    user: UserDTO;
    playerRole: PlayerRole;
    slot: number | null;
    status: PlayerGameStatus;
    restrictionData: {
      muted: boolean;
      restricted: boolean;
      banned: boolean;
    };
    score: number;
  }) {
    this._user = data.user;
    this._slot = data.slot;
    this._role = data.playerRole;
    this._status = data.status;
    this._restrictionData = data.restrictionData;
    this._score = data.score;
  }

  // Metadata
  public get meta(): PlayerMeta {
    return {
      id: this._user.id,
      username: this._user.username,
      avatar: this._user.avatar ?? null,
    };
  }

  // Role
  public get role() {
    return this._role;
  }

  public set role(role: PlayerRole) {
    this._role = role;
  }

  // Slot
  public get gameSlot() {
    return this._slot;
  }

  public set gameSlot(slot: number | null) {
    this._slot = slot;
  }

  // Status
  public get gameStatus() {
    return this._status;
  }

  public set gameStatus(status: PlayerGameStatus) {
    this._status = status;
  }

  // Score
  public getScore(): number {
    return this._score;
  }

  public updateScore(amount: number): void {
    this._score += amount;
  }

  // Restrictions
  public get isMuted(): boolean {
    return this._restrictionData.muted;
  }

  public set isMuted(value: boolean) {
    this._restrictionData.muted = value;
  }

  public get isRestricted(): boolean {
    return this._restrictionData.restricted;
  }

  public set isRestricted(value: boolean) {
    this._restrictionData.restricted = value;
  }

  public get isBanned(): boolean {
    return this._restrictionData.banned;
  }

  public set isBanned(value: boolean) {
    this._restrictionData.banned = value;
  }
}
