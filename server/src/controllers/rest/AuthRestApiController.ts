import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { type AuthService } from "services/AuthService";
import { LoginUser } from "managers/user/LoginUser";
import { JWTUtils } from "utils/JWTUtils";
import {
  validateRefresh,
  validateTokenForAuth,
} from "middleware/AuthMiddleware";
import { ErrorController } from "error/ErrorController";
import { HttpStatus } from "enums/HttpStatus";
import { validateWithSchema } from "middleware/SchemaMiddleware";
import { ServerServices } from "services/ServerServices";

export class AuthRestApiController {
  private _authService: AuthService;

  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._authService = ServerServices.auth;

    app.use("/v1/auth", router);

    router.post(
      `/login`,
      validateTokenForAuth,
      validateWithSchema(this.ctx.db, LoginUser),
      this.login
    );
    router.post(`/refresh`, validateRefresh, this.refresh);
  }

  private login = async (req: Request, res: Response) => {
    try {
      const result = await this._authService.login(this.ctx, req);
      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private refresh = async (req: Request, res: Response) => {
    try {
      const result = JWTUtils.refresh(req);
      res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      res.status(code).send({ error: message });
    }
  };
}
