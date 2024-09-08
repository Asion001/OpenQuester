import { type Request, type Response, Router } from "express";

import { UserService } from "../../services/UserService";
import { UpdateUser } from "../../managers/user/UpdateUser";
import { ApiContext } from "../../services/context/ApiContext";
import { JWTUtils } from "../../utils/JWTUtils";
import { ClientResponse } from "../../enums/ClientResponse";
import { validateParamsIDMiddleware } from "../../middleware/request/userRequestMiddleware";
import { ErrorController } from "../../error/ErrorController";
import { HttpStatus } from "../../enums/HttpStatus";
import {
  requireAdmin,
  requireAdminIfIdProvided,
} from "../../middleware/role/roleMiddleware";
import { validateWithSchema } from "../../middleware/schemaMiddleware";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  private _userService: UserService;

  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._userService = this.ctx.serverServices.get(UserService);

    app.use("/v1/user", router);

    app.get(`/v1/users`, requireAdmin(this.ctx.db), this.listUsers);
    router.get(
      "(/:id)?",
      validateParamsIDMiddleware,
      requireAdminIfIdProvided(this.ctx.db),
      this.getUser
    );
    router.patch(
      "(/:id)?",
      validateParamsIDMiddleware,
      requireAdminIfIdProvided(this.ctx.db),
      validateWithSchema(UpdateUser),
      this.updateUser
    );
    router.delete(
      "(/:id)?",
      validateParamsIDMiddleware,
      requireAdminIfIdProvided(this.ctx.db),
      this.deleteUser
    );
  }

  private getUser = async (req: Request, res: Response) => {
    try {
      const tokenPayload = JWTUtils.getTokenPayload(req.headers.authorization);

      const result = await this._userService.get(
        this.ctx.db,
        Number(req.params.id),
        tokenPayload
      );

      if (result) {
        return res.status(HttpStatus.OK).send(result);
      }

      return res
        .status(HttpStatus.NOT_FOUND)
        .send({ message: ClientResponse.USER_NOT_FOUND });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };

  private updateUser = async (req: Request, res: Response) => {
    try {
      const tokenPayload = JWTUtils.getTokenPayload(req.headers.authorization);

      const result = await this._userService.update(
        this.ctx.db,
        this.ctx.crypto,
        tokenPayload,
        req.body,
        Number(req.params.id)
      );

      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveQueryError(err);
      return res.status(code).send({ error: message });
    }
  };

  private deleteUser = async (req: Request, res: Response) => {
    try {
      const tokenPayload = JWTUtils.getTokenPayload(req.headers.authorization);

      await this._userService.delete(
        this.ctx.db,
        Number(req.params.id),
        tokenPayload
      );

      return res.status(HttpStatus.NO_CONTENT).send();
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };

  private listUsers = async (req: Request, res: Response) => {
    try {
      const tokenPayload = JWTUtils.getTokenPayload(req.headers.authorization);

      const result = await this._userService.list(this.ctx.db, tokenPayload);

      if (result) {
        return res.status(HttpStatus.OK).send(result);
      }

      return res
        .status(HttpStatus.NOT_FOUND)
        .send({ message: ClientResponse.USER_NOT_FOUND });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
