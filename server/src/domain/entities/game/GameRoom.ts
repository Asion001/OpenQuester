import { Player } from "domain/entities/game/Player";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { GameRoomCreateDTO } from "domain/types/dto/game/room/GameRoomCreateDTO";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { Logger } from "infrastructure/utils/Logger";

/**
 * Handles actions related to game room. Contains all players info and can manage
 * players state (mute, ban, restrict, kick etc..)
 */
export class GameRoom {
  private _players: Player[];
  private _scores: Map<number, number>;

  private _slots: Array<number | null> = [];
  private _gameData: GameListItemDTO;
  private _gameDataInitialized = false;

  constructor(gameRoomData: GameRoomCreateDTO) {
    this._players = gameRoomData.players;
    this._scores = gameRoomData.scores;
    this._slots = gameRoomData.slots;
    this._gameData = gameRoomData.gameData;
  }

  public get gameData() {
    return this._gameData;
  }

  public get scores() {
    return this._scores;
  }

  public get slots() {
    return this._slots;
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
    return !!this._players.find((p) => {
      return p.meta.id === userId && p.gameStatus === PlayerGameStatus.IN_GAME;
    });
  }

  public async addUser(user: UserDTO, role: PlayerRole): Promise<Player> {
    const playerData = this._players.find((p) => p.meta.id === user.id);

    const slotIdx = await this._getFirstFreeSlotIndex();

    if (role === PlayerRole.PLAYER) {
      this._slots[slotIdx] = user.id;
    }

    if (playerData) {
      playerData.gameStatus = PlayerGameStatus.IN_GAME;
      playerData.role = role;
      return playerData;
    }

    const player = new Player(
      user,
      role,
      slotIdx,
      0,
      PlayerGameStatus.IN_GAME,
      {
        muted: false,
        restricted: false,
        banned: false,
      }
    );

    this._scores.set(user.id, player.getBalance());
    this._players.push(player);

    return player;
  }

  public getPlayers() {
    return this._players;
  }

  public removeUser(userId: number): void {
    const idx = this._players.findIndex((p) => p.meta.id === userId);
    if (idx >= 0) {
      const player = this._players[idx];
      const slot = this._slots.indexOf(userId);
      this._slots[slot] = null;

      player.gameStatus = PlayerGameStatus.DISCONNECTED;
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
