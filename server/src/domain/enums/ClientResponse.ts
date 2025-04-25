/**
 * Represents API responses to the client (Responses with 4xx code)
 */
export enum ClientResponse {
  // User
  SOCKET_USER_NOT_AUTHENTICATED = "socket_user_not_authenticated",
  USER_NOT_FOUND = "user_not_found",
  ALREADY_LOGGED_IN = "user_logged_in",
  USER_ALREADY_EXISTS = "user_already_exists",
  NO_USER_DATA = "no_user_data",
  BAD_DATE_FORMAT = "bad_date_format",
  USER_DATA_CORRUPTED = "user_data_corrupted",

  // Auth
  NO_REFRESH = "no_refresh",
  INVALID_SESSION = "invalid_session",
  ACCESS_DENIED = "access_denied",
  NO_PERMISSION = "no_permission",
  LOGOUT_SUCCESS = "logout_success",
  DISCORD_AUTH_FAILED = "discord_auth_failed",
  OAUTH_PROVIDER_NOT_SUPPORTED = "oauth_provider_not_supported",
  SESSION_SAVING_ERROR = "session_saving_error",

  // Validation
  VALIDATION_ERROR = "validation_error",
  BAD_USER_ID = "bad_user_id",
  NO_AVATAR = "no_avatar",

  // Package
  NO_CONTENT_ROUNDS = "no_content_rounds",
  WRONG_CONTENT = "wrong_content",
  EMPTY_CONTENT = "empty_content",
  CANNOT_SAVE_CONTENT = "cannot_save_content",
  PACKAGE_AUTHOR_NOT_FOUND = "package_author_not_found",
  PACKAGE_NOT_FOUND = "package_not_found",
  PACKAGE_CORRUPTED = "package_corrupted",
  ORDER_DUPLICATED = "order_duplicated",

  // File
  FILENAME_REQUIRED = "filename_required",
  FILENAME_INVALID = "filename_invalid",
  DELETE_FROM_PACKAGE = "delete_from_package",
  UNSUPPORTED_FILE_TYPE = "unsupported_file_type",

  // Game
  NO_GAME_DATA = "no_game_data",
  BAD_GAME_CREATION = "bad_game_creation",
  GAME_NOT_FOUND = "game_not_found",
  GAME_DATA_IS_CORRUPTED = "game_data_corrupted",
  ALREADY_IN_GAME = "already_in_game",
  NOT_IN_GAME = "not_in_game",
  GAME_IS_FULL = "game_is_full",
  SHOWMAN_IS_TAKEN = "showman_is_taken",
  GAME_DOES_NOT_EXISTS = "game_does_not_exists",
  YOU_ARE_BANNED = "you_are_banned",
  YOU_ARE_RESTRICTED = "you_are_restricted",
  YOU_ARE_MUTED = "you_are_muted",

  // Other
  DELETE_REQUEST_SENT = "delete_request_sent",
}
