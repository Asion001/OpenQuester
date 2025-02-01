import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { type AuthService } from "services/AuthService";
import { LoginUser } from "managers/user/LoginUser";
import { JWTUtils } from "utils/JWTUtils";
import {
  validateRefresh,
  validateTokenForAuth,
} from "middleware/authMiddleware";
import { HttpStatus } from "enums/HttpStatus";
import { validateWithSchema } from "middleware/schemaMiddleware";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { ILoginUser } from "types/user/ILoginUser";
import { loginScheme } from "schemes/auth/authSchemes";

export class AuthRestApiController {
  private readonly _authService: AuthService;

  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._authService = this.ctx.serverServices.auth;

    app.use("/v1/auth", router);

    router.post(
      `/login`,
      validateTokenForAuth,
      validateWithSchema(this.ctx.db, LoginUser),
      asyncHandler(this.login)
    );
    router.post(`/refresh`, validateRefresh, asyncHandler(this.refresh));
  }

  private login = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<ILoginUser>(
      req.body,
      loginScheme()
    ).validate();

    const result = await this._authService.login(this.ctx, validatedData);
    return res.status(HttpStatus.OK).send(result);
  };

  private refresh = async (req: Request, res: Response) => {
    const result = JWTUtils.refresh(req);
    res.status(HttpStatus.OK).send(result);
  };
}
