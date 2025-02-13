import { Router, type Request, type Response } from "express";
import Joi from "joi";
import https, { RequestOptions } from "node:https";

import { type ApiContext } from "application/context/ApiContext";
import { TranslateService as ts } from "application/services/text/TranslateService";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ServerResponse } from "domain/enums/ServerResponse";
import { ClientError } from "domain/errors/ClientError";
import { ServerError } from "domain/errors/ServerError";
import { DiscordProfile } from "domain/types/discord/DiscordProfile";
import { DiscordProfileDTO } from "domain/types/dto/auth/DiscordProfileDTO";
import {
  EOauthProvider,
  Oauth2LoginDTO,
} from "domain/types/dto/auth/Oauth2LoginDTO";
import { RegisterUser } from "domain/types/user/RegisterUser";
import { User } from "infrastructure/database/models/User";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { Logger } from "infrastructure/utils/Logger";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class AuthRestApiController {
  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    app.use("/v1/auth", router);

    router.get("/logout", asyncHandler(this.logout));
    router.post("/oauth2", asyncHandler(this.handleOauthLogin));
  }

  private handleOauthLogin = async (req: Request, res: Response) => {
    const authDTO = await new RequestDataValidator<Oauth2LoginDTO>(
      req.body,
      Joi.object({
        oauthProvider: Joi.valid(...Object.values(EOauthProvider)).required(),
        tokenSchema: Joi.string().max(128).allow(null),
        token: Joi.string().max(512).required(),
      })
    ).validate();

    let userData: User | null = null;

    switch (authDTO.oauthProvider) {
      case "discord":
        userData = await this.getDiscordUser(authDTO);

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

  private async getDiscordUser(authData: Oauth2LoginDTO): Promise<User> {
    const discordUser = await new Promise<string>((resolve, reject) => {
      const options: RequestOptions = {
        hostname: "discord.com",
        path: "/api/users/@me",
        method: "GET",
        headers: {
          authorization: authData.tokenSchema
            ? `${authData.tokenSchema} ${authData.token}`
            : authData.token,
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
    let profileData: DiscordProfile;
    try {
      profileData = JSON.parse(discordUser);
    } catch {
      throw new ClientError("Unable to parse user data");
    }

    const profile = await new RequestDataValidator<DiscordProfileDTO>(
      profileData,
      Joi.object({
        id: Joi.string().required(),
        username: Joi.string().required(),
        email: Joi.string().email().allow(null),
      })
    ).validate();

    const userRepo = UserRepository.getRepository(this.ctx.db);

    let user = await userRepo.findOne(
      { discord_id: profile.id, is_deleted: false },
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
      user = new User();
      user.discord_id = profile.id;
      user.username = profile.username;
      user.email = profile.email ?? null;

      const registerData: RegisterUser = await user.export();

      user = await userRepo.create(this.ctx.db, registerData);
    }

    // TODO: Use .toDTO()
    return user;
  }
}
