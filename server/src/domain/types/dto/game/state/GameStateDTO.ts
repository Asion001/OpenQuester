import { GameStateRoundDTO } from "./GameStateRoundDTO";
import { GameStateTimerDTO } from "./GameStateTimerDTO";
import { QuestionState } from "./QuestionState";

export interface GameStateAnsweredPlayerDTO {
  player: number;
  /**Result can be -n, +n or 0 */
  result: number;
}

export interface GameStateDTO {
  questionState: QuestionState | null;
  isPaused: boolean;
  currentRound: GameStateRoundDTO | null;
  currentQuestion: number | null; // Only if chosen
  answeringPlayer: number | null; // Only if answering
  answeredPlayers: GameStateAnsweredPlayerDTO[] | null;
  timer: GameStateTimerDTO | null;
}
