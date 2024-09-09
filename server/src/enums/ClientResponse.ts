/**
 * Represents API responses to the client (Responses with 4xx code)
 */
export enum ClientResponse {
  // User
  USER_NOT_FOUND = "User not found",
  ALREADY_LOGGED_IN = "User is already logged in",
  USER_ALREADY_EXISTS = "User with this name or email already exists",
  NO_USER_DATA = "No user data provided",
  WRONG_PASSWORD = "Wrong password, please try again",

  // Auth
  NO_REFRESH = "Please provide refresh_token",
  INVALID_REFRESH = "Invalid or expired refresh token",
  INVALID_TOKEN = "Token invalid or expired",
  ACCESS_DENIED = "Access denied",
  TOO_MANY_REQUESTS = "Too many requests, please try again later",

  // Validation
  VALIDATION_ERROR = "Validation error",
  FIELDS_REQUIRED = "%s fields is required",
  BAD_USER_ID = "Please provide id that greater than 1",

  // Package
  NO_CONTENT_ROUNDS = 'Content does not contain "rounds"!',
  WRONG_CONTENT = "Wrong 'content' argument type, it should be a valid JSON object!",
  EMPTY_CONTENT = "Content is empty!",
  CANNOT_SAVE_CONTENT = "Cannot save content to the Database, probably it is incorrect or empty",
  PACKAGE_AUTHOR_NOT_FOUND = "User that upload package not found, upload aborted",

  // File
  FILENAME_REQUIRED = '"filename" field is required',
  FILENAME_INVALID = '"filename" should be a valid string',

  // Other
  DELETE_REQUEST_SENT = "Delete request sent",
  USER_PERMISSION_NOT_EXISTS = "Permission %name with ID %id does not exists",
}
