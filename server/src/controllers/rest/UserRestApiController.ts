import { type Request, type Response, Router } from "express";

import { UserService } from "../../services/UserService";
import { UpdateUser } from "../../managers/user/UpdateUser";
import { ApiContext } from "../../services/context/ApiContext";
import { JWTUtils } from "../../utils/JWTUtils";
import { ClientResponse } from "../../enums/ClientResponse";
import { validateParamsIDMiddleware } from "../../middleware/request/userRequestMiddleware";
import { ErrorController } from "../../error/ErrorController";
import { HttpStatus } from "../../enums/HttpStatus";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/user", router);

    router.get(
      "(/:id)?",
      validateParamsIDMiddleware,
      async (req: Request, res: Response) => {
        try {
          const tokenPayload = JWTUtils.getTokenPayload(
            req.headers.authorization
          );

          const result = await UserService.get(
            ctx.db,
            Number(req.params.id),
            tokenPayload
          );

          if (result) {
            return res.status(HttpStatus.OK).send(result);
          }

          return res
            .status(HttpStatus.NOT_FOUND)
            .send({ message: ClientResponse.USER_NOT_FOUND });
        } catch (err: any) {
          const { message, code } = ErrorController.resolveError(err);
          return res.status(code).send({ error: message });
        }
      }
    );

    router.patch("(/:id)?", async (req: Request, res: Response) => {
      try {
        const data = new UpdateUser(req.body);
        // Override body to leave only validated data
        req.body = data.validate();

        const tokenPayload = JWTUtils.getTokenPayload(
          req.headers.authorization
        );

        const result = await UserService.update(
          ctx.db,
          ctx.crypto,
          tokenPayload,
          req.body,
          Number(req.params.id)
        );

        return res.status(HttpStatus.OK).send(result);
      } catch (err: unknown) {
        const { message, code } = ErrorController.resolveQueryError(err);
        return res.status(code).send({ error: message });
      }
    });

    router.delete("(/:id)?", async (req: Request, res: Response) => {
      try {
        const tokenPayload = JWTUtils.getTokenPayload(
          req.headers.authorization
        );

        await UserService.delete(ctx.db, Number(req.params.id), tokenPayload);

        return res.status(HttpStatus.NO_CONTENT).send();
      } catch (err: any) {
        const { message, code } = ErrorController.resolveError(err);
        return res.status(code).send({ error: message });
      }
    });

    app.get(`/v1/users`, async (req: Request, res: Response) => {
      try {
        const tokenPayload = JWTUtils.getTokenPayload(
          req.headers.authorization
        );

        const result = await UserService.list(ctx.db, tokenPayload);

        if (result) {
          return res.status(HttpStatus.OK).send(result);
        }

        return res
          .status(HttpStatus.NOT_FOUND)
          .send({ message: ClientResponse.USER_NOT_FOUND });
      } catch (err: any) {
        const { message, code } = ErrorController.resolveError(err);
        return res.status(code).send({ error: message });
      }
    });
  }
}
