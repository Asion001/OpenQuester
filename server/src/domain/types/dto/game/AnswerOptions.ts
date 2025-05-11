export enum AnswerResult {
  CORRECT = "correct",
  WRONG = "wrong",
  SKIP = "skip",
}

export interface AnswerOptions {
  answerResult: AnswerResult;
}
