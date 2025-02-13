import { USER_SELECT_FIELDS } from "constants/user";
import cookieSignature from "cookie-signature";

import { UserRepository } from "database/repositories/UserRepository";
import { HttpStatus } from "enums/HttpStatus";
import { type ApiContext } from "services/context/ApiContext";
import { Logger } from "utils/Logger";

export class DevelopmentRestApiController {
  constructor(private readonly ctx: ApiContext) {
    const dummyUser = {
      username: "dev-user",
      email: "dev@example.com",
      discord_id: "dev-user-discord",
      birthday: null,
      avatar: null,
    };

    this.ctx.app.post("/v1/dev/login", async (req, res) => {
      try {
        const userRepo = UserRepository.getRepository(this.ctx.db);

        let user = await userRepo.findOne(
          {
            username: dummyUser.username,
            email: dummyUser.email,
            discord_id: dummyUser.discord_id,
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
          user = await userRepo.create(this.ctx.db, {
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
            cookieSignature.sign(req.sessionID, this.ctx.env.SESSION_SECRET!);
          res.json({
            success: true,
            user,
            token: signedSessionID,
          });
        });
      } catch (error) {
        Logger.error(`DEV: Login error: ${error}`);
        res.status(500).json({ error: "Login failed" });
      }
    });

    // Dummy logout endpoint
    this.ctx.app.post("/v1/dev/logout", (req, res) => {
      req.session.destroy((err) => {
        if (err) {
          Logger.error(`DEV: Logout error: ${err}`);
          return res.status(500).json({ error: "Logout failed" });
        }
        res.clearCookie("connect.sid");
        res.status(HttpStatus.OK).json({ success: true });
      });
    });
  }
}
