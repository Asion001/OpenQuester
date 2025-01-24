import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { type UserService } from "services/UserService";
import { UpdateUser } from "managers/user/UpdateUser";
import { ClientResponse } from "enums/ClientResponse";
import { ErrorController } from "error/ErrorController";
import { HttpStatus } from "enums/HttpStatus";
import { requirePermissionIfIdProvided } from "middleware/permission/PermissionMiddleware";
import { validateWithSchema } from "middleware/SchemaMiddleware";
import { checkPermission } from "middleware/permission/PermissionMiddleware";
import { Permissions } from "enums/Permissions";
import { TranslateService as ts } from "services/text/TranslateService";
import { ServerServices } from "services/ServerServices";
import { validateTokenForAuth } from "middleware/AuthMiddleware";
import { RegisterUser } from "managers/user/RegisterUser";
import { AuthService } from "services/AuthService";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  private _userService: UserService = ServerServices.user;
  private _authService: AuthService = ServerServices.auth;

  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    app.use("/v1/users", router);

    router.get(
      "/",
      checkPermission(this.ctx.db, Permissions.GET_ALL_USERS),
      this.listUsers
    );

    router.post(
      "/",
      validateTokenForAuth,
      validateWithSchema(this.ctx.db, RegisterUser),
      this.register
    );
    router.get(
      "/:id",
      requirePermissionIfIdProvided(this.ctx.db, Permissions.GET_ANOTHER_USER),
      this.getUser
    );
    router.patch(
      "(/:id)?",
      requirePermissionIfIdProvided(
        this.ctx.db,
        Permissions.CHANGE_ANOTHER_USER
      ),
      validateWithSchema(this.ctx.db, UpdateUser),
      this.updateUser
    );
    router.delete(
      "(/:id)?",
      requirePermissionIfIdProvided(
        this.ctx.db,
        Permissions.DELETE_ANOTHER_USER
      ),
      this.deleteUser
    );
  }

  private register = async (req: Request, res: Response) => {
    try {
      const result = await this._authService.register(this.ctx, req);
      return res.status(HttpStatus.CREATED).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveUserQueryError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private getUser = async (req: Request, res: Response) => {
    try {
      const result = await this._userService.get(this.ctx, req);

      if (result) {
        return res.status(HttpStatus.OK).send(result);
      }

      return res.status(HttpStatus.NOT_FOUND).send({
        message: ts.localize(ClientResponse.USER_NOT_FOUND, req.headers),
      });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private updateUser = async (req: Request, res: Response) => {
    try {
      const result = await this._userService.update(this.ctx, req);

      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveUserQueryError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private deleteUser = async (req: Request, res: Response) => {
    try {
      await this._userService.delete(this.ctx, req);
      return res.status(HttpStatus.NO_CONTENT).send();
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private listUsers = async (req: Request, res: Response) => {
    try {
      const result = await this._userService.list(this.ctx);

      if (result) {
        return res.status(HttpStatus.OK).send(result);
      }

      return res.status(HttpStatus.NOT_FOUND).send({
        message: ts.localize(ClientResponse.USER_NOT_FOUND, req.headers),
      });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };
}
