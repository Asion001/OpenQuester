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
}
