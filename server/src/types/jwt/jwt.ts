export interface JWTPayload {
  /** User id */
  id: number;
  /** Issued at (timestamp) */
  iat: number;
  /** Expires at (timestamp) */
  exp: number;
}

export interface JWTResponse {
  access_token: string;
  refresh_token: string;
}

export interface TokenOptions {
  secret: string;
  refreshSecret: string;
  expiresIn: string;
  refreshExpiresIn: string;
}

export interface JWTSecret {
  jwt_secret: string;
}
