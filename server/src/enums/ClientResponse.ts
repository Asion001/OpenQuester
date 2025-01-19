/**
 * Represents API responses to the client (Responses with 4xx code)
 */
export enum ClientResponse {
  // User
  USER_NOT_FOUND = "user_not_found",
  ALREADY_LOGGED_IN = "user_logged_in",
  USER_ALREADY_EXISTS = "user_already_exists",
  NO_USER_DATA = "no_user_data",
  WRONG_PASSWORD = "wrong_password",

  // Auth
  NO_REFRESH = "no_refresh",
  INVALID_REFRESH = "invalid_refresh",
  INVALID_TOKEN = "invalid_token",
  ACCESS_DENIED = "access_denied",
  TOO_MANY_REQUESTS = "too_many_requests",
  NO_PERMISSION = "no_permission",

  // Validation
  VALIDATION_ERROR = "validation_error",
  FIELDS_REQUIRED = "fields_required",
  BAD_USER_ID = "bad_user_id",
  NO_AVATAR = "no_avatar",

  // Package
  NO_CONTENT_ROUNDS = "no_content_rounds",
  WRONG_CONTENT = "wrong_content",
  EMPTY_CONTENT = "empty_content",
  CANNOT_SAVE_CONTENT = "cannot_save_content",
  PACKAGE_AUTHOR_NOT_FOUND = "package_author_not_found",

  // File
  FILENAME_REQUIRED = "filename_required",
  FILENAME_INVALID = "filename_invalid",
  FILE_NOT_FOUND = "file_not_found",
  DELETE_FROM_PACKAGE = "delete_from_package",

  // Other
  DELETE_REQUEST_SENT = "delete_request_sent",
  USER_PERMISSION_NOT_EXISTS = "user_permission_not_exists",
}
