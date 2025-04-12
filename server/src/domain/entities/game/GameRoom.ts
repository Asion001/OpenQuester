import { Player } from "domain/entities/game/Player";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { Logger } from "infrastructure/utils/Logger";

/**
 * Handles actions related to game room. Contains all players info and can manage
 * players state (mute, ban, restrict, kick etc..)
 */
export class GameRoom {
  private _users: Map<number, { playerData: Player }> = new Map();
  private _scores: Map<number, number> = new Map();

  private _slots: Array<number | null> = [];
  private _gameData?: GameListItemDTO;
  private _gameDataInitialized = false;

  constructor() {
    //
  }

  public get gameData() {
    return this._gameData;
  }

  public get isInitialized() {
    return this._gameDataInitialized;
  }

  /**
   * Initializes game room with game data related to it, should be called after
   * room creation and before any actions
   * @param gameData Data of game related to room
   */
  public async init(gameData: GameListItemDTO) {
    // This called on every user join. Surely there's better way to do this...
    if (this._gameDataInitialized) return;

    this._slots = Array(gameData.maxPlayers).fill(null);
    this._gameData = gameData;
    this._gameDataInitialized = true;
  }

  public hasPlayer(userId: number): boolean {
    const player = this._users.get(userId);

    return (
      !!player && player.playerData.gameStatus === PlayerGameStatus.IN_GAME
    );
  }

  public async addUser(user: UserDTO, role: PlayerRole): Promise<Player> {
    const playerData = this._users.get(user.id)?.playerData;

    if (playerData) {
      playerData.gameStatus = PlayerGameStatus.IN_GAME;
      return playerData;
    }

    this._users.set(user.id, {
      playerData: new Player(
        user,
        role,
        {
          muted: false,
          restricted: false,
          banned: false,
        },
        0,
        PlayerGameStatus.IN_GAME
      ),
    });

    this._scores.set(user.id, 0);
    if (role !== PlayerRole.SPECTATOR) {
      this._slots[await this._getFirstFreeSlotIndex()] = user.id;
    }

    return this._users.get(user.id)!.playerData;
  }

  public getPlayers() {
    return Object.fromEntries(this._users ?? {});
  }

  public removeUser(userId: number): void {
    const user = this._users.get(userId);
    if (user) {
      const slot = this._slots.indexOf(userId);
      this._slots[slot] = null;

      user.playerData.gameStatus = PlayerGameStatus.DISCONNECTED;
    }
  }

  public checkFreeSlot() {
    return this._slots.some((slot) => slot === null);
  }

  /**
   * @returns first free slot in game room. This will always return positive
   * integer since player cannot start joining in game if it's full
   */
  private async _getFirstFreeSlotIndex() {
    for (const slot of this._slots) {
      if (slot === null) {
        return this._slots.indexOf(slot);
      }
    }
    // Inform developers in case if collision happened
    Logger.error("Game join collision happened !!", "[GAME]: ");
    Logger.warn(
      `Slots: ${this._slots}, \ngameData: ${JSON.stringify(this._gameData)}`
    );
    return -1;
  }
}
