import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";

/**
 * Player entity that helps handle player-related data or action (in future)
 */
export class Player {
  private muted: boolean;
  private restricted: boolean;
  private banned: boolean;

  constructor(
    private readonly user: UserDTO,
    private readonly role: PlayerRole,
    private readonly restrictionData: {
      muted: boolean;
      restricted: boolean;
      banned: boolean;
    },
    private balance: number,
    private status: PlayerGameStatus
  ) {
    this.muted = restrictionData.muted;
    this.restricted = restrictionData.restricted;
    this.banned = restrictionData.banned;
  }

  public get gameStatus() {
    return this.status;
  }

  public set gameStatus(status: PlayerGameStatus) {
    this.status = status;
  }

  // Balance data getter and setters
  public getBalance(): number {
    return this.balance;
  }

  public updateBalance(amount: number): void {
    this.balance += amount;
  }

  // Restriction data getters and setters
  public get isMuted(): boolean {
    return this.muted;
  }

  public set isMuted(value: boolean) {
    this.muted = value;
  }

  public get isRestricted(): boolean {
    return this.restricted;
  }

  public set isRestricted(value: boolean) {
    this.restricted = value;
  }

  public get isBanned(): boolean {
    return this.banned;
  }

  public set isBanned(value: boolean) {
    this.restricted = value;
  }
}
