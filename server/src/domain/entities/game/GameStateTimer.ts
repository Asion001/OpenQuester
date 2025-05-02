import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";

export class GameStateTimer {
  private _timer!: GameStateTimerDTO;
  private _started: boolean = false;

  constructor(private readonly durationMs: number) {
    //
  }

  public start(): GameStateTimerDTO {
    if (this._started) {
      return this.value();
    }

    this._timer = {
      durationMs: this.durationMs,
      elapsedMs: 0,
      startedAt: new Date(),
    };

    this._started = true;

    return this._timer;
  }

  public value(): GameStateTimerDTO {
    return this._timer;
  }
}
