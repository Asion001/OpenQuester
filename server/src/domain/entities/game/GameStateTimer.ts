import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";

export class GameStateTimer {
  private _timer!: GameStateTimerDTO;

  constructor(private readonly durationMs: number) {
    //
  }

  public start(): GameStateTimerDTO {
    this._timer = {
      durationMs: this.durationMs,
      elapsedMs: 0,
      startedAt: new Date(),
    };

    return this._timer;
  }

  public value(): GameStateTimerDTO {
    return this._timer;
  }
}
