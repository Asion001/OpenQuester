import cookieSignature from "cookie-signature";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { type Express } from "express";

import { Environment } from "infrastructure/config/Environment";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { Logger } from "infrastructure/utils/Logger";

export class DevelopmentRestApiController {
  constructor(
    private readonly app: Express,
    private readonly userRepository: UserRepository,
    private readonly env: Environment
  ) {
    const dummyUser = {
      username: "dev-user",
      email: "dev@example.com",
      discord_id: "dev-user-discord",
      birthday: null,
      avatar: null,
    };

    this.app.post("/v1/dev/login", async (req, res) => {
      try {
        let user = await this.userRepository.findOne(
          {
            username: dummyUser.username,
            email: dummyUser.email,
            discord_id: dummyUser.discord_id,
            is_deleted: false,
          },
          {
            select: USER_SELECT_FIELDS,
            relations: ["avatar", "permissions"],
            relationSelects: {
              avatar: ["id", "filename"],
              permissions: ["id", "name"],
            },
          }
        );

        if (!user) {
          user = await this.userRepository.create({
            username: dummyUser.username,
            email: dummyUser.email,
            discord_id: dummyUser.discord_id,
            birthday: null,
            avatar: null,
          });
        }
        req.session.userId = user.id;
        req.session.save((err) => {
          if (err) {
            Logger.error(`DEV: Session save error: ${err}`);
            return res.status(500).json({ error: "Session save failed" });
          }
          // Signed session value to put it in Postman
          const signedSessionID =
            "s:" +
            cookieSignature.sign(req.sessionID, this.env.SESSION_SECRET!);
          res.json({
            success: true,
            user,
            sessionToken: signedSessionID,
          });
        });
      } catch (error) {
        Logger.error(`DEV: Login error: ${error}`);
        res.status(500).json({ error: "Login failed" });
      }
    });
  }
}
