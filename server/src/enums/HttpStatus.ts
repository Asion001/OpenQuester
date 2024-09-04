export enum HttpStatus {
  // 2xx: Success
  OK = 200,
  CREATED = 201,
  NO_CONTENT = 204,

  // 4xx: Client Errors
  BAD_REQUEST = 400,
  UNAUTHORIZED = 401,
  FORBIDDEN = 403,
  NOT_FOUND = 404,
  TOO_MANY_REQUESTS = 429,

  // 5xx: Server Errors
  INTERNAL = 500,
  NOT_IMPLEMENTED = 501,
  BAD_GATEWAY = 502,
  SERVICE_UNAVAILABLE = 503,
  GATEWAY_TIMEOUT = 504,
}
