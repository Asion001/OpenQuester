export enum SocketIOEvents {
  ERROR = "error",
  DISCONNECT = "disconnect",
  CONNECTION = "connection",
  GAMES = "games",
  CHAT_MESSAGE = "chat-message",
}

export enum SocketIOGameEvents {
  JOIN = "join",
  LEAVE = "userLeave",
  GAME_DATA = "gameData",
}
