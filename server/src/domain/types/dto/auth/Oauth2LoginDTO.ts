// Add "google" later
export enum EOauthProvider {
  DISCORD = "discord",
}

export interface Oauth2LoginDTO {
  oauthProvider: EOauthProvider;
  tokenSchema?: string | null;
  token: string;
}
