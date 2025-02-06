export const getDiscordCDNLink = (userId: string, filename: string) => {
  return `https://cdn.discordapp.com/avatars/${userId}/${filename}`;
};
