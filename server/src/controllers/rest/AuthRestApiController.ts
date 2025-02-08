import Joi from "joi";
import { Router, type Request, type Response } from "express";
import https, { RequestOptions } from "node:https";

import { type ApiContext } from "services/context/ApiContext";
import { User } from "database/models/User";
import { HttpStatus } from "enums/HttpStatus";
import { ClientResponse } from "enums/ClientResponse";
import { ServerError } from "error/ServerError";
import { ServerResponse } from "enums/ServerResponse";
import { TranslateService as ts } from "services/text/TranslateService";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import {
  EOauthProvider,
  IOauth2LoginInput,
} from "types/auth/IOauth2LoginInput";
import { ClientError } from "error/ClientError";
import { Logger } from "utils/Logger";
import { UserRepository } from "database/repositories/UserRepository";
import { IDiscordProfile } from "types/discord/discord";
import { EFileSource } from "enums/file/EFileSource";
import { getDiscordCDNLink } from "constants/discord";
import { FileRepository } from "database/repositories/FileRepository";
import { IRegisterUser } from "types/user/IRegisterUser";

export class AuthRestApiController {
  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    app.use("/v1/auth", router);

    router.get("/logout", asyncHandler(this.logout));
    router.post("/oauth2", asyncHandler(this.handleOauthLogin));
  }

  private handleOauthLogin = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<IOauth2LoginInput>(
      req.body,
      Joi.object({
        oauthProvider: Joi.valid(...Object.values(EOauthProvider)).required(),
        tokenSchema: Joi.string().max(128).allow(null),
        token: Joi.string().max(512).required(),
      })
    ).validate();

    let userData: User | null = null;

    switch (validatedData.oauthProvider) {
      case "discord":
        userData = await this.getDiscordUser(
          validatedData.token,
          validatedData.tokenSchema
        );

        req.session.userId = userData.id;

        req.session.save((err) => {
          if (err) {
            Logger.error(`Session save error: ${err}`);
            throw new ClientError(ClientResponse.SESSION_SAVING_ERROR);
          }

          res.status(HttpStatus.OK).json(userData);
        });
        break;
      default:
        throw new ClientError(ClientResponse.OAUTH_PROVIDER_NOT_SUPPORTED);
    }
  };

  private logout = async (req: Request, res: Response) => {
    const sessionId = req.sessionID;
    req.session.destroy(async (err) => {
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

      await this.ctx.serverServices.redis.del(`session:${sessionId}`);
      res.clearCookie("connect.sid");

      res.status(HttpStatus.OK).json({
        message: ts.localize(ClientResponse.LOGOUT_SUCCESS, req.headers),
      });
    });
  };

  private async getDiscordUser(
    token: string,
    tokenSchema?: string | null
  ): Promise<User> {
    const discordUser = await new Promise<string>((resolve, reject) => {
      const options: RequestOptions = {
        hostname: "discord.com",
        path: "/api/users/@me",
        method: "GET",
        headers: {
          authorization: tokenSchema ? `${tokenSchema} ${token}` : token,
        },
      };

      const request = https.request(options, (response) => {
        let data = "";

        response.on("data", (chunk) => {
          return (data += chunk);
        });
        response.on("end", () => resolve(data));
      });

      request.on("error", reject);
      request.end();
    });

    // Parse Discord response
    let profileData: IDiscordProfile;
    try {
      profileData = JSON.parse(discordUser);
    } catch {
      throw new ClientError("Unable to parse user data");
    }

    const profile = await new RequestDataValidator(
      profileData,
      Joi.object({
        id: Joi.string().required(),
        username: Joi.string().required(),
        email: Joi.string().email().allow(null),
        avatar: Joi.string().allow(null),
      })
    ).validate();

    const userRepo = UserRepository.getRepository(this.ctx.db);

    let user = await userRepo.findOne({ discord_id: profile.id });

    if (!user) {
      user = new User();
      user.discord_id = profile.id;
      user.username = profile.username;
      if (profile.avatar) {
        const fileRepo = FileRepository.getRepository(this.ctx.db);
        const file = await fileRepo.writeFile(
          getDiscordCDNLink(profile.id, profile.avatar),
          profile.avatar,
          EFileSource.DISCORD
        );
        user.avatar = file;
      }
      user.email = profile.email ?? null;

      const registerData: IRegisterUser = await user.export();

      user = await userRepo.create(this.ctx.db, registerData);
    }

    return user;
  }
}
