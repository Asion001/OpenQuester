import { type Request, type Response, Router } from "express";

import { UserService } from "../../services/UserService";
import { QueryFailedError } from "typeorm";
import { UpdateUser } from "../../managers/user/UpdateUser";
import { ApiContext } from "../../services/context/ApiContext";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/user", router);

    router.get("(/:id)?", async (req: Request, res: Response) => {
      try {
        const result = await UserService.get(ctx, req);
        if (result) {
          return res.status(200).send(result);
        }
        return res.status(404).send({ message: "User not found" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    router.patch("(/:id)?", async (req: Request, res: Response) => {
      try {
        const data = new UpdateUser(req.body);
        // Override body to leave only validated data
        req.body = data.validate();

        const result = await UserService.update(ctx, req);
        return res.status(200).send(result);
      } catch (err: any) {
        let code = 400;
        if (
          // Catch query error from TypeORM (if user already exists)
          err instanceof QueryFailedError &&
          err.message.includes("duplicate key value")
        ) {
          err.message = `User with this name or email already exists`;
        }

        if (err.message.toLowerCase().includes("not found")) {
          code = 404;
        }

        return res.status(code).send({ error: err.message });
      }
    });

    router.delete("(/:id)?", async (req: Request, res: Response) => {
      try {
        await UserService.delete(ctx, req);
        return res.status(204).send();
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.get(`/v1/users`, async (req: Request, res: Response) => {
      try {
        const result = await UserService.list(ctx, req);
        if (result) {
          return res.status(200).send(result);
        }
        return res.status(404).send({ message: "Users not found" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
