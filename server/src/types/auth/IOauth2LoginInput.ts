// Add "google" later
export enum EOauthProvider {
  DISCORD = "discord",
}

export interface IOauth2LoginInput {
  oauthProvider: EOauthProvider;
  tokenSchema?: string | null;
  token: string;
}
