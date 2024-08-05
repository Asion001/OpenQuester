import { Express, Request, Response } from "express";
import { AuthService } from "../../services/AuthService";
import { db } from "../../database/Database";
import { QueryFailedError } from "typeorm";
import { Environment } from "../../config/Environment";
import jwt from "jsonwebtoken";
import { Logger } from "../../utils/Logger";

export class AuthRestApiController {
  constructor(app: Express) {
    app.post("/v1/auth/register", async (req: Request, res: Response) => {
      try {
        if (!this.checkToken(req)) {
          throw new Error("User is already logged in");
        }

        const result = await AuthService.register(db, req.body);
        return res.status(201).send(result);
      } catch (err: any) {
        if (
          // Catch query error from TypeORM (if user already exists)
          err instanceof QueryFailedError &&
          err.message.includes("duplicate key value")
        ) {
          err.message = `User with this name or email already exists`;
        }
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/auth/login", async (req: Request, res: Response) => {
      try {
        if (!this.checkToken(req)) {
          throw new Error("User is already logged in");
        }

        const result = await AuthService.login(db, req.body);
        return res.send(result);
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/auth/refresh", async (req: Request, res: Response) => {
      try {
        const refresh = req.body.refresh_token;
        if (!refresh) {
          throw new Error("Please provide refresh_token");
        }

        const result = AuthService.refreshToken(refresh);
        res.status(200).send(result);
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });
  }

  private checkToken(req: Request) {
    if (req.header("Authorization")) {
      const header = req.header("Authorization");
      const scheme = header?.split(" ")[0];
      const token = header?.split(" ")[1];
      if (!token || scheme !== Environment.JWT_SCHEME) {
        // If token invalid - we can proceed register / login
        return true;
      }
      try {
        jwt.verify(token, Environment.JWT_SECRET);
        return false;
      } catch {
        //
      }
    }

    return true;
  }
}
