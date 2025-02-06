import passport from "passport";
import { Router, type Request, type Response } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { User } from "database/models/User";
import { HttpStatus } from "enums/HttpStatus";
import { ClientResponse } from "enums/ClientResponse";
import { ServerError } from "error/ServerError";
import { ServerResponse } from "enums/ServerResponse";
import { TranslateService as ts } from "services/text/TranslateService";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";

export class AuthRestApiController {
  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    app.use("/v1/auth", router);

    router.get("/discord", asyncHandler(passport.authenticate("discord")));
    router.get("/discord/callback", asyncHandler(this.handleDiscordCallback));
    router.get("/logout", asyncHandler(this.logout));
  }

  private logout = async (req: Request, res: Response) => {
    const sessionId = req.sessionID;
    req.session.destroy((err) => {
      if (err) {
        throw new ServerError(
          ServerResponse.UNABLE_TO_DESTROY_SESSION,
          HttpStatus.INTERNAL,
          {
            id: req.session.id,
            userId: req.session.userId,
          }
        );
      }
      this.ctx.serverServices.redis.del(`session:${sessionId}`);
      res.status(HttpStatus.OK).json({
        message: ts.localize(ClientResponse.LOGOUT_SUCCESS, req.headers),
      });
    });
  };

  private handleDiscordCallback = async (req: Request, res: Response) => {
    passport.authenticate(
      "discord",
      {
        failureRedirect: this.ctx.env.DISCORD_FAILURE_REDIRECT_URL,
        successRedirect: this.ctx.env.DISCORD_SUCCESS_REDIRECT_URL,
      },
      (err: Error, user: User) => {
        if (err || !user) {
          return res.send({ error: ts.localize(err.message) });
        }

        // Establish session
        req.session.userId = user.id;
        req.session.save((err) => {
          if (err) {
            return res.send();
          }
          res.redirect(this.ctx.env.DISCORD_SUCCESS_REDIRECT_URL);
        });
      }
    )(req, res);
  };
}
