export interface GameStateQuestionDTO {
  id: number;
  order: number;
  price: number | null;
  questionComment: string | null;
  isPlayed: boolean;
}
