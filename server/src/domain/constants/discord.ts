export const getDiscordCDNLink = (discordUserId: string, filename: string) => {
  return `https://cdn.discordapp.com/avatars/${discordUserId}/${filename}`;
};
