import { Router, type Express, type Request, type Response } from "express";
import Redis from "ioredis";
import Joi from "joi";
import https, { RequestOptions } from "node:https";

import { TranslateService as ts } from "application/services/text/TranslateService";
import { getDiscordCDNLink } from "domain/constants/discord";
import { USER_RELATIONS, USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { FileSource } from "domain/enums/file/FileSource";
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
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { RegisterUser } from "domain/types/user/RegisterUser";
import { User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { SocketRedisService } from "infrastructure/services/socket/SocketRedisService";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { Logger } from "infrastructure/utils/Logger";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class AuthRestApiController {
  constructor(
    private readonly app: Express,
    private readonly redis: Redis,
    private readonly userRepository: UserRepository,
    private readonly fileRepository: FileRepository,
    private readonly storage: S3StorageService,
    private readonly socketRedisService: SocketRedisService
  ) {
    const router = Router();

    this.app.use("/v1/auth", router);

    router.get("/logout", asyncHandler(this.logout));
    router.post("/socket", asyncHandler(this.socketAuth));
    router.post("/oauth2", asyncHandler(this.handleOauthLogin));
  }

  private socketAuth = async (req: Request, res: Response) => {
    const authDTO = await new RequestDataValidator<{ socketId: string }>(
      req.body,
      Joi.object({
        socketId: Joi.string().required(),
      })
    ).validate();

    const existingData = await this.socketRedisService.getIfExists(
      authDTO.socketId
    );

    if (existingData && existingData.id) {
      throw new ClientError("Socket already logged in");
    }

    await this.socketRedisService.set(
      authDTO.socketId,
      req.user!.id // Null safety approved by auth middleware
    );

    res.status(HttpStatus.OK).send();
  };

  private handleOauthLogin = async (req: Request, res: Response) => {
    const authDTO = await new RequestDataValidator<Oauth2LoginDTO>(
      req.body,
      Joi.object({
        oauthProvider: Joi.valid(...Object.values(EOauthProvider)).required(),
        tokenSchema: Joi.string().max(128).allow(null),
        token: Joi.string().max(512).required(),
      })
    ).validate();

    let userData: UserDTO | null = null;

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

      await this.redis.del(`session:${sessionId}`);
      res.clearCookie("connect.sid");

      res.status(HttpStatus.OK).json({
        message: ts.localize(ClientResponse.LOGOUT_SUCCESS, req.headers),
      });
    });
  };

  private async getDiscordUser(authData: Oauth2LoginDTO): Promise<UserDTO> {
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
        avatar: Joi.string().allow(null),
      })
    ).validate();

    let user = await this.userRepository.findOne(
      { discord_id: profile.id, is_deleted: false },
      {
        select: USER_SELECT_FIELDS,
        relations: USER_RELATIONS,
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
      if (profile.avatar) {
        const file = await this.fileRepository.writeFile(
          getDiscordCDNLink(profile.id, profile.avatar),
          profile.avatar,
          FileSource.DISCORD
        );

        user.avatar = file;
        await this.storage.putFileFromDiscord(
          getDiscordCDNLink(profile.id, profile.avatar),
          file.filename
        );
      }

      const registerData: RegisterUser = await user.export();

      user = await this.userRepository.create(registerData);
    }

    return user.toDTO();
  }
}
