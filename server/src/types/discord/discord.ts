export interface IDiscordProfile {
  id: string;
  username: string;
  global_name: string | null;
  locale: string;
  mfa_enabled: boolean;
  flags: number;
  public_flags: number;
  banner: string | null;
  accent_color: number | null;
  avatar: string | null;
  avatar_decoration_data: {
    sku_id: string;
    asset: string;
  } | null;
  discriminator: string;
  verified: boolean;
  /** @see {@link https://discord.com/developers/docs/resources/user#user-object-premium-types} */
  premium_type: 0 | 1 | 2 | 3;
  fetchedAt: string;
  email?: string | undefined;
}
