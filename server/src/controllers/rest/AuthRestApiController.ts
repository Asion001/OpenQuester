import { type Request, type Response, Router } from "express";

import { AuthService } from "../../services/AuthService";
import { RegisterUser } from "../../managers/user/RegisterUser";
import { LoginUser } from "../../managers/user/LoginUser";
import { JWTUtils } from "../../utils/JWTUtils";
import { ApiContext } from "../../services/context/ApiContext";
import { ClientResponse } from "../../enums/ClientResponse";
import { validateTokenForAuth } from "../../middleware/authMiddleware";
import { ErrorController } from "../../error/ErrorController";
import { HttpStatus } from "../../enums/HttpStatus";
import { ClientError } from "../../error/ClientError";

/**
 * Handles all endpoints related to user authorization
 */
export class AuthRestApiController {
  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    app.use("/v1/auth", router);

    router.post(`/register`, validateTokenForAuth, this.register);
    router.post(`/login`, validateTokenForAuth, this.login);
    router.post(`/refresh`, this.refresh);
  }

  private register = async (req: Request, res: Response) => {
    try {
      const data = new RegisterUser(req.body);
      data.validate();

      const result = await AuthService.register(
        this.ctx.db,
        req.body,
        this.ctx.crypto
      );
      return res.status(HttpStatus.CREATED).send(result);
    } catch (err: unknown) {
      const { message, code } = ErrorController.resolveQueryError(err);
      return res.status(code).send({ error: message });
    }
  };

  private login = async (req: Request, res: Response) => {
    try {
      const data = new LoginUser(req.body);
      data.validate();

      const result = await AuthService.login(
        this.ctx.db,
        req.body,
        this.ctx.crypto
      );
      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };

  private refresh = async (req: Request, res: Response) => {
    try {
      const refresh = req.body.refresh_token;
      if (!refresh) {
        throw new ClientError(ClientResponse.NO_REFRESH);
      }

      const result = JWTUtils.refresh(refresh);
      res.status(HttpStatus.OK).send(result);
    } catch (err: any) {
      const { message, code } = ErrorController.resolveError(err);
      res.status(code).send({ error: message });
    }
  };
}
