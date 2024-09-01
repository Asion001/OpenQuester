import { type Request, type Response, Router } from "express";

import { UserService } from "../../services/UserService";
import { QueryFailedError } from "typeorm";
import { UpdateUser } from "../../managers/user/UpdateUser";
import { ApiContext } from "../../services/context/ApiContext";
import { JWTUtils } from "../../utils/JWTUtils";
import { ApiResponse } from "../../enums/ApiResponse";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/user", router);

    // TODO: Validate id with middleware
    router.get("(/:id)?", async (req: Request, res: Response) => {
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
          return res.status(200).send(result);
        }

        return res.status(404).send({ message: ApiResponse.USER_NOT_FOUND });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

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

        return res.status(200).send(result);
      } catch (err: any) {
        let code = 400;
        if (
          // Catch query error from TypeORM (if user already exists)
          err instanceof QueryFailedError &&
          err.message.includes("duplicate key value")
        ) {
          err.message = ApiResponse.USER_ALREADY_EXISTS;
        }

        if (err.message.toLowerCase().includes("not found")) {
          code = 404;
        }

        return res.status(code).send({ error: err.message });
      }
    });

    router.delete("(/:id)?", async (req: Request, res: Response) => {
      try {
        const tokenPayload = JWTUtils.getTokenPayload(
          req.headers.authorization
        );

        await UserService.delete(ctx.db, Number(req.params.id), tokenPayload);

        return res.status(204).send();
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.get(`/v1/users`, async (req: Request, res: Response) => {
      try {
        const tokenPayload = JWTUtils.getTokenPayload(
          req.headers.authorization
        );

        const result = await UserService.list(ctx.db, tokenPayload);

        if (result) {
          return res.status(200).send(result);
        }

        return res.status(404).send({ message: ApiResponse.USER_NOT_FOUND });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
