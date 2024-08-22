import { Request, Response, Router } from "express";
import { AuthService } from "../../services/AuthService";
import { QueryFailedError } from "typeorm";
import { Environment } from "../../config/Environment";
import jwt from "jsonwebtoken";
import bcrypt from "bcryptjs";
import { IApiContext } from "../../interfaces/IApiContext";
import { RegisterUser } from "../../dto/user/RegisterUser";
import { LoginUser } from "../../dto/user/LoginUser";
import { JWTUtils } from "../../utils/JWTUtils";

/**
 * Handles all endpoints related to user authorization
 */
export class AuthRestApiController {
  constructor(ctx: IApiContext) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/auth", router);

    router.post(`/register`, async (req: Request, res: Response) => {
      try {
        if (!this.validateTokenForAuth(req)) {
          throw new Error("User is already logged in");
        }

        const data = new RegisterUser(req.body);
        data.validate();

        const result = await AuthService.register(ctx, req.body, bcrypt);
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

    router.post(`/login`, async (req: Request, res: Response) => {
      try {
        if (!this.validateTokenForAuth(req)) {
          throw new Error("User is already logged in");
        }

        const data = new LoginUser(req.body);
        data.validate();

        const result = await AuthService.login(ctx, req.body, bcrypt);
        return res.send(result);
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    router.post(`/refresh`, async (req: Request, res: Response) => {
      try {
        const refresh = req.body.refresh_token;
        if (!refresh) {
          throw new Error("Please provide refresh_token");
        }

        const result = JWTUtils.refresh(refresh);
        res.status(200).send(result);
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });
  }

  /**
   * This method returns true, if token is invalid. This means if user token is invalid,
   * user should be able to login / register.
   *
   * If user token is valid - he's already logged in and no need to continue execution
   */
  private validateTokenForAuth(req: Request): boolean {
    if (!req.header("Authorization")) {
      return true;
    }

    const header = req.header("Authorization");
    const scheme = header?.split(" ")[0];
    const token = header?.split(" ")[1];

    if (!token || scheme !== Environment.JWT_SCHEME) {
      return true;
    }

    try {
      jwt.verify(token, Environment.JWT_SECRET);
      return false;
    } catch {
      // Token invalid - continue
    }

    return true;
  }
}
