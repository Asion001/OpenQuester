import { type Request, type Response, Router } from "express";

import { UserService } from "../../services/UserService";
import { UpdateUser } from "../../managers/user/UpdateUser";
import { ApiContext } from "../../services/context/ApiContext";
import { ClientResponse } from "../../enums/ClientResponse";
import { ErrorController } from "../../error/ErrorController";
import { HttpStatus } from "../../enums/HttpStatus";
import { requirePermissionIfIdProvided } from "../../middleware/permission/PermissionMiddleware";
import { validateWithSchema } from "../../middleware/SchemaMiddleware";
import { checkPermission } from "../../middleware/permission/PermissionMiddleware";
import { Permissions } from "../../enums/Permissions";
import { TranslateService as ts } from "../../services/text/TranslateService";
import { ServerServices } from "../../services/ServerServices";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  private _userService: UserService;

  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._userService = ServerServices.user;

    app.use("/v1/user", router);

    app.get(
      `/v1/users`,
      checkPermission(this.ctx.db, Permissions.GET_ALL_USERS),
      this.listUsers
    );

    router.get(
      "(/:id)?",
      requirePermissionIfIdProvided(this.ctx.db, Permissions.GET_ANOTHER_USER),
      this.getUser
    );
    router.patch(
      "(/:id)?",
      requirePermissionIfIdProvided(
        this.ctx.db,
        Permissions.CHANGE_ANOTHER_USER
      ),
      validateWithSchema(UpdateUser),
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
