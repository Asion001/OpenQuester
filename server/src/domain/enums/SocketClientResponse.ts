// TODO: Add/Use translation
export enum SocketClientResponse {
  USER_NOT_AUTHENTICATED = "User not authenticated",
  USER_ALREADY_IN_GAME = "User already in the game",
  USER_NOT_FOUND = "User not found",
  USER_DATA_CORRUPTED = "User data is corrupted, please re-login",
  NOT_IN_GAME = "You are not currently in this game",
  GAME_IS_FULL = "This game is full! You can join only as spectator",
  GAME_DOES_NOT_EXISTS = "Game with this ID does not exists",
}
