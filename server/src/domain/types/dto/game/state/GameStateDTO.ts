import { GameStateRoundDTO } from "domain/types/dto/game/state/GameStateRoundDTO";
import { GameStateTimerDTO } from "domain/types/dto/game/state/GameStateTimerDTO";
import { QuestionState } from "domain/types/dto/game/state/QuestionState";

export interface GameStateAnsweredPlayerData {
  player: number;
  /** Result can be -n, +n or 0 */
  result: number;
  score: number;
}

export interface GameStateDTO {
  questionState: QuestionState | null;
  isPaused: boolean;
  currentRound: GameStateRoundDTO | null;
  currentQuestion: number | null; // Only if chosen
  answeringPlayer: number | null; // Only if answering
  answeredPlayers: GameStateAnsweredPlayerData[] | null;
  /** This is used as readiness at game start and as readiness for another events */
  readyPlayers: number[] | null;
  timer: GameStateTimerDTO | null;
}
