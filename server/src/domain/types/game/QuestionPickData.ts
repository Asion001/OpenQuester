import { Game } from "domain/entities/game/Game";
import { GameStateTimer } from "domain/entities/game/GameStateTimer";
import { PackageQuestionDTO } from "domain/types/dto/package/PackageQuestionDTO";

export interface QuestionPickData {
  question: PackageQuestionDTO;
  game: Game;
  timer: GameStateTimer | null;
}
