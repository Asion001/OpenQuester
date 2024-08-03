import { Express, Request, Response } from "express";
import { AuthService } from "../../services/AuthService";
import { db } from "../../database/Database";
import { QueryFailedError } from "typeorm";

export class AuthRestApiController {
  constructor(app: Express) {
    app.post("/v1/auth/register", async (req: Request, res: Response) => {
      try {
        const result = await AuthService.register(db, req.body);
        return res.status(201).send(result);
      } catch (err: any) {
        if (
          err instanceof QueryFailedError &&
          err.message.includes("duplicate key value")
        ) {
          err.message = `User with this name or email already exists`;
        }
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/auth/login", async (req: Request, res: Response) => {
      try {
        const result = await AuthService.login(db, req.body);
        return res.send(result);
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
