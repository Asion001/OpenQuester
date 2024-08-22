export type JWTPayload = {
  /** User id */
  id: number;
  /** Issued at (timestamp) */
  iat: number;
  /** Expires at (timestamp) */
  exp: number;
};

export type JWTResponse = {
  access_token: string;
  refresh_token: string;
};

export type TokenOptions = {
  secret: string;
  refreshSecret: string;
  expiresIn: string;
  refreshExpiresIn: string;
};

export type jwtSecret = {
  jwt_secret: string;
};
