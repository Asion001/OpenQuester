import { Express, Request, Response } from "express";
import { UserService } from "../../services/UserService";
import { Database } from "../../database/Database";
import * as bcrypt from "bcryptjs";
import { QueryFailedError } from "typeorm";

export class UserRestApiController {
  constructor(db: Database, app: Express) {
    app.post("/v1/users/get-by-token/", async (req: Request, res: Response) => {
      try {
        const result = await UserService.getByToken(db, req);
        return res.status(200).send(result);
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/users/retrieve/:id", async (req: Request, res: Response) => {
      try {
        const result = await UserService.retrieve(db, req);
        if (result) {
          return res.status(200).send(result);
        }
        return res.status(404).send({ message: "User not found" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/users/all", async (req: Request, res: Response) => {
      try {
        const result = await UserService.all(db, req);
        if (result) {
          return res.status(200).send(result);
        }
        return res.status(404).send({ message: "User not found" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.patch("/v1/users/update/:id", async (req: Request, res: Response) => {
      try {
        const result = await UserService.update(db, req, bcrypt);
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

    app.delete("/v1/users/delete/:id", async (req: Request, res: Response) => {
      try {
        await UserService.delete(db, req);
        return res.status(204).send();
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
