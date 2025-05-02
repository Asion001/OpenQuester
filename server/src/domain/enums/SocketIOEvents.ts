export enum SocketIOEvents {
  ERROR = "error",
  DISCONNECT = "disconnect",
  CONNECTION = "connection",
  GAMES = "games",
  CHAT_MESSAGE = "chat-message",
}

export enum SocketIOGameEvents {
  JOIN = "join",
  START = "start",
  LEAVE = "user-leave",
  GAME_DATA = "game-data",
  QUESTION_PICK = "question-pick",
  QUESTION_READY = "question-ready",
  QUESTION_PLAYER_READY = "question-player-ready",
  QUESTION_DATA = "question-data",
  QUESTION_FINISH = "question-finish",
  QUESTION_PREPARE = "question-prepare",
}
