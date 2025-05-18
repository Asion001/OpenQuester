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
  SOCKET_LOGGED_IN = "socket_logged_in",

  // Validation
  VALIDATION_ERROR = "validation_error",
  BAD_USER_ID = "bad_user_id",
  BAD_ID_PROVIDED = "bad_id_provided",
  NO_AVATAR = "no_avatar",
  CANNOT_PARSE_USER_DATA = "cannot_parse_user_data",

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
  GAME_FINISHED = "game_finished",
  SHOWMAN_IS_TAKEN = "showman_is_taken",
  NO_SHOWMAN = "no_showman",
  GAME_DOES_NOT_EXISTS = "game_does_not_exists",
  YOU_ARE_BANNED = "you_are_banned",
  YOU_ARE_RESTRICTED = "you_are_restricted",
  YOU_ARE_MUTED = "you_are_muted",
  ONLY_SHOWMAN_CAN_START = "only_showman_can_start",
  GAME_ALREADY_STARTED = "game_already_started",
  GAME_NOT_STARTED = "game_not_started",
  BAD_ROUND_RETRIEVAL = "bad_round_retrieval",
  ONLY_HOST_CAN_DELETE = "only_host_can_delete",
  YOU_CANNOT_PICK_QUESTION = "you_cannot_pick_question",
  YOU_CANNOT_ANSWER_QUESTION = "you_cannot_answer_question",
  QUESTION_NOT_FOUND = "question_not_found",
  QUESTION_ALREADY_PICKED = "question_already_picked",
  QUESTION_ALREADY_PLAYED = "question_already_played",
  QUESTION_NOT_PICKED = "question_not_picked",
  SOMEONE_ALREADY_ANSWERING = "someone_already_answering",
  ALREADY_ANSWERED = "already_answered",
  GAME_IS_PAUSED = "game_is_paused",
  PLAYER_NOT_FOUND = "player_not_found",
  CANNOT_SUBMIT_ANSWER = "cannot_submit_answer",
  ONLY_SHOWMAN_SEND_ANSWER_RESULT = "only_showman_send_answer_result",
  ONLY_SHOWMAN_NEXT_ROUND = "only_showman_next_round",
  ONLY_SHOWMAN_SKIP_QUESTION_FORCE = "only_showman_skip_question_force",
  ONLY_SHOWMAN_CAN_PAUSE = "only_showman_can_pause",
  ONLY_SHOWMAN_CAN_UNPAUSE = "only_showman_can_unpause",

  // Other
  DELETE_REQUEST_SENT = "delete_request_sent",
}
