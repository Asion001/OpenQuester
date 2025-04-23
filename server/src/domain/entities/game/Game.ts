import { Player } from "domain/entities/game/Player";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { GameIndexesInputDTO } from "domain/types/dto/game/GameIndexesInputDTO";
import { GameRedisHashDTO } from "domain/types/dto/game/GameRedisHashDTO";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PlayerGameStatus } from "domain/types/game/PlayerGameStatus";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { PlayerMeta } from "domain/types/socket/game/PlayerMeta";
import { Logger } from "infrastructure/utils/Logger";

export class Game {
  private _id: string;
  private _title: string;
  private _createdBy: number;
  private _createdAt: Date;
  private _isPrivate: boolean;
  private _ageRestriction: AgeRestriction;
  private _currentRound: number;
  private _maxPlayers: number;
  private _startedAt: Date | null;
  private _package: PackageDTO;
  private _roundsCount: number;
  private _questionsCount: number;
  private _players: Player[];

  constructor(data: {
    id: string;
    title: string;
    createdBy: number;
    createdAt: Date;
    isPrivate: boolean;
    ageRestriction: AgeRestriction;
    currentRound: number;
    maxPlayers: number;
    startedAt: Date | null;
    package: PackageDTO;
    roundsCount: number;
    questionsCount: number;
    players: Player[];
  }) {
    this._id = data.id;
    this._title = data.title;
    this._createdBy = data.createdBy;
    this._createdAt = data.createdAt;
    this._isPrivate = data.isPrivate;
    this._ageRestriction = data.ageRestriction;
    this._currentRound = data.currentRound;
    this._maxPlayers = data.maxPlayers;
    this._startedAt = data.startedAt;
    this._package = data.package;
    this._roundsCount = data.roundsCount;
    this._questionsCount = data.questionsCount;
    this._players = data.players;
  }

  // Getters
  public get id() {
    return this._id;
  }

  public get title() {
    return this._title;
  }

  public get createdBy() {
    return this._createdBy;
  }

  public get createdAt() {
    return this._createdAt;
  }

  public get isPrivate() {
    return this._isPrivate;
  }

  public get ageRestriction() {
    return this._ageRestriction;
  }

  public get currentRound() {
    return this._currentRound;
  }

  public get maxPlayers() {
    return this._maxPlayers;
  }

  public get startedAt() {
    return this._startedAt;
  }

  public get packageId() {
    return this._package.id;
  }

  public get package() {
    return this._package;
  }

  public get roundsCount() {
    return this._roundsCount;
  }

  public get questionsCount() {
    return this._questionsCount;
  }

  public get players() {
    return this._players;
  }

  public get playersCount() {
    return this._players.length;
  }

  public hasPlayer(userId: number): boolean {
    return this._players.some(
      (p) => p.meta.id === userId && p.gameStatus === PlayerGameStatus.IN_GAME
    );
  }

  public async addPlayer(meta: PlayerMeta, role: PlayerRole): Promise<Player> {
    const playerData = this._players.find((p) => p.meta.id === meta.id);

    const slotIdx =
      role === PlayerRole.PLAYER ? this._getFirstFreeSlotIndex() : null;

    if (playerData) {
      playerData.gameStatus = PlayerGameStatus.IN_GAME;
      playerData.role = role;
      playerData.gameSlot = slotIdx;
      return playerData;
    }

    const player = new Player({
      meta: meta,
      role,
      restrictionData: {
        banned: false,
        muted: false,
        restricted: false,
      },
      score: 0,
      status: PlayerGameStatus.IN_GAME,
      slot: slotIdx,
    });

    this._players.push(player);
    return player;
  }

  public removePlayer(userId: number): void {
    const player = this._players.find((p) => p.meta.id === userId);
    if (player) {
      player.gameStatus = PlayerGameStatus.DISCONNECTED;
    }
  }

  public checkFreeSlot(): boolean {
    const occupiedSlots = this._players.filter(
      (p) =>
        p.role === PlayerRole.PLAYER &&
        p.gameSlot !== null &&
        p.gameStatus === PlayerGameStatus.IN_GAME
    ).length;
    return occupiedSlots < this._maxPlayers;
  }

  /**
   * @returns Whether showman slot is free
   */
  public checkShowmanSlot(): boolean {
    return this._players.some(
      (p) =>
        p.role === PlayerRole.SHOWMAN &&
        p.gameStatus === PlayerGameStatus.IN_GAME
    );
  }

  private _getFirstFreeSlotIndex(): number {
    const occupiedSlots = this._players
      .filter(
        (p) =>
          p.role === PlayerRole.PLAYER &&
          p.gameSlot !== null &&
          p.gameStatus === PlayerGameStatus.IN_GAME
      )
      .map((p) => p.gameSlot);

    for (let i = 0; i < this._maxPlayers; i++) {
      if (!occupiedSlots.includes(i)) {
        return i;
      }
    }

    // Inform developers in case if collision happened
    Logger.error("Game join collision happened !!", "[GAME]: ");
    Logger.warn(`Slots: ${occupiedSlots}, \ngame: ${JSON.stringify(this.id)}`);
    return -1;
  }

  public serializeGameToHash(): GameRedisHashDTO {
    return {
      id: this._id,
      createdBy: this._createdBy.toString(),
      title: this._title,
      createdAt: this._createdAt.getTime().toString(),
      isPrivate: this._isPrivate ? "1" : "0",
      ageRestriction: this._ageRestriction,
      currentRound: this._currentRound.toString(),
      maxPlayers: this._maxPlayers.toString(),
      package: JSON.stringify(this._package),
      startedAt: this._startedAt ? this._startedAt.getTime().toString() : "",
      roundsCount: this._roundsCount.toString(),
      questionsCount: this._questionsCount.toString(),
      players: JSON.stringify(this._players.map((p) => p.toDTO())),
    };
  }

  public static deserializeGameHash(data: GameRedisHashDTO): Game {
    return new Game({
      id: data.id,
      title: data.title,
      createdBy: parseInt(data.createdBy),
      createdAt: new Date(parseInt(data.createdAt)),
      isPrivate: data.isPrivate === "1",
      ageRestriction: data.ageRestriction as AgeRestriction,
      currentRound: parseInt(data.currentRound),
      maxPlayers: parseInt(data.maxPlayers),
      startedAt: data.startedAt ? new Date(parseInt(data.startedAt)) : null,
      package: JSON.parse(data.package),
      roundsCount: parseInt(data.roundsCount),
      questionsCount: parseInt(data.questionsCount),
      players: JSON.parse(data.players).map((p: any) => new Player(p)),
    });
  }

  public toIndexData(): GameIndexesInputDTO {
    return {
      id: this._id,
      createdAt: this._createdAt,
      isPrivate: this._isPrivate,
      title: this._title,
    };
  }
}
