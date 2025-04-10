import { GameService } from "application/services/game/GameService";
import cookieSignature from "cookie-signature";
import {
  GAME_MAX_PLAYERS,
  GAME_TITLE_MAX_CHARS,
  GAME_TITLE_MIN_CHARS,
} from "domain/constants/game";
import { USER_RELATIONS, USER_SELECT_FIELDS } from "domain/constants/user";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { type Express } from "express";

import { Environment } from "infrastructure/config/Environment";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { Logger } from "infrastructure/utils/Logger";

export class DevelopmentRestApiController {
  constructor(
    private readonly app: Express,
    private readonly userRepository: UserRepository,
    private readonly env: Environment,
    private readonly gameService: GameService
  ) {
    const dummyUser = {
      username: "dev-user",
      email: "dev@example.com",
      discord_id: "dev-user-discord",
      birthday: null,
      avatar: null,
    };

    this.app.post("/v1/dev/login/:num", async (req, res) => {
      try {
        const num = req.params.num ? `-${req.params.num}` : "";
        let user = await this.userRepository.findOne(
          {
            username: dummyUser.username + num,
            email: dummyUser.email + num,
            discord_id: dummyUser.discord_id + num,
            is_deleted: false,
          },
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
          user = await this.userRepository.create({
            username: dummyUser.username + num,
            email: dummyUser.email + num,
            discord_id: dummyUser.discord_id + num,
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

    this.app.get("/v1/dev/generate-games", async (req, res) => {
      try {
        // Ensure the user is authenticated
        if (!req.session.userId) {
          return res.status(401).json({ error: "Unauthorized" });
        }

        // Parse count from query parameter, default to 50
        const count = parseInt(req.query.count as string) || 50;
        const packageId = parseInt(req.body.packageId);

        if (count < 1 || count > 1000) {
          return res
            .status(400)
            .json({ error: "Count must be between 1 and 1000" });
        }

        const games = [];
        for (let i = 0; i < count; i++) {
          const gameData = this.generateRandomGameData(packageId);
          const game = await this.gameService.create(req, gameData);
          games.push(game);
        }

        res.json({ success: true, games });
      } catch (err: any) {
        Logger.error(`DEV: Generate games error: ${err.message}`);
        res.status(500).json({ error: `Failed to generate games` });
      }
    });
  }

  /**
   * Generates random game data conforming to the createGameScheme constraints.
   * @returns {GameCreateDTO} Random game data object
   */
  private generateRandomGameData(packageId: number): GameCreateDTO {
    // Random title length between min and max
    const titleLength =
      Math.floor(
        Math.random() * (GAME_TITLE_MAX_CHARS - GAME_TITLE_MIN_CHARS + 1)
      ) + GAME_TITLE_MIN_CHARS;
    const title = this.generateRandomString(titleLength);

    const isPrivate = Math.random() < 0.5;

    const ageRestrictions = Object.values(AgeRestriction);
    const ageRestriction =
      ageRestrictions[Math.floor(Math.random() * ageRestrictions.length)];

    const maxPlayers = Math.floor(Math.random() * GAME_MAX_PLAYERS) + 1;

    return {
      title,
      packageId,
      isPrivate,
      ageRestriction,
      maxPlayers,
    };
  }

  private generateRandomString(length: number): string {
    const characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    let result = "";
    for (let i = 0; i < length; i++) {
      result += characters.charAt(
        Math.floor(Math.random() * characters.length)
      );
    }
    return result;
  }
}
