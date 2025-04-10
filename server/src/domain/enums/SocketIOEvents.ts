export enum SocketIOEvents {
  DISCONNECT = "disconnect",
  CONNECTION = "connection",
  GAMES = "games",
  CHAT_MESSAGE = "chat-message",
}

export enum SocketIOGameEvents {
  JOIN = "join",
  LEAVE = "leave",
  GAME_DATA = "gameData",
}
