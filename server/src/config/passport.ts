import passport from "passport";
import { Strategy as DiscordStrategy } from "passport-discord";
import { User } from "database/models/User";
import { AppDataSource } from "database/DataSource";
import { Database } from "database/Database";
import { UserRepository } from "../database/repositories/UserRepository";
import { FileRepository } from "database/repositories/FileRepository";
import { getDiscordCDNLink } from "constants/discord";
import { EFileSource } from "enums/file/EFileSource";
import { IRegisterUser } from "types/user/IRegisterUser";

export const configureDiscordStrategy = () => {
  passport.use(
    new DiscordStrategy(
      {
        clientID: process.env.DISCORD_CLIENT_ID!,
        clientSecret: process.env.DISCORD_CLIENT_SECRET!,
        callbackURL: process.env.DISCORD_CALLBACK_URL!,
        scope: ["identify", "email"],
      },
      async (accessToken, refreshToken, profile, done) => {
        const db = Database.getInstance(AppDataSource);
        const userRepository = UserRepository.getRepository(db);

        try {
          let user = await userRepository.findOne({ discord_id: profile.id });

          if (!user) {
            user = new User();
            user.discord_id = profile.id;
            user.username = profile.username;
            if (profile.avatar) {
              const fileRepo = FileRepository.getRepository(db);
              const file = await fileRepo.writeFile(
                getDiscordCDNLink(profile.id, profile.avatar),
                profile.avatar,
                EFileSource.DISCORD
              );
              user.avatar = file;
            }
            user.email = profile.email ?? null;

            const registerData: IRegisterUser = await user.export();

            user = await userRepository.create(db, registerData);
          }

          return done(null, user);
        } catch (error) {
          return done(error);
        }
      }
    )
  );

  passport.serializeUser((user: Express.User, done) => {
    done(null, (user as User).id);
  });

  passport.deserializeUser(async (id: number, done) => {
    const db = Database.getInstance(AppDataSource);
    const user = await UserRepository.getRepository(db).get(id);
    done(null, user as Express.User);
  });
};
