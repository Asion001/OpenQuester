import { Request, Response } from "express";
import { UserService } from "../../services/UserService";
import * as bcrypt from "bcryptjs";
import { QueryFailedError } from "typeorm";
import { IApiContext } from "../../ServeApi";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  private path: string;

  constructor(ctx: IApiContext) {
    const app = ctx.app;
    this.path = "/v1/user(/:id)?";

    app.get(this.path, async (req: Request, res: Response) => {
      try {
        const result = await UserService.retrieve(ctx, req);
        if (result) {
          return res.status(200).send(result);
        }
        return res.status(404).send({ message: "User not found" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.patch(this.path, async (req: Request, res: Response) => {
      try {
        const result = await UserService.update(ctx, req, bcrypt);
        return res.status(200).send(result ? result : "");
      } catch (err: any) {
        let s = 400;
        if (
          // Catch query error from TypeORM (if user already exists)
          err instanceof QueryFailedError &&
          err.message.includes("duplicate key value")
        ) {
          err.message = `User with this name or email already exists`;
        }
        if (err.message.toLowerCase().includes("not found")) {
          s = 404;
        }
        return res.status(s).send({ error: err.message });
      }
    });

    app.delete(this.path, async (req: Request, res: Response) => {
      try {
        await UserService.delete(ctx, req);
        return res.status(204).send();
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.get(`/v1/users`, async (req: Request, res: Response) => {
      try {
        const result = await UserService.all(ctx, req);
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
