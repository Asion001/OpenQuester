import { Express, Request, Response } from "express";
import { UserService } from "../../services/UserService";

export class AuthRestApiController {
  constructor(app: Express) {
    app.post("/v1/auth/register", (req: Request, res: Response) => {
      try {
        const result = UserService.register(req.body);
        return res.status(201).send(result);
      } catch (err: any) {
        console.error(err);
        err = { error: err };
        return res.status(400).send(err);
      }
    });

    app.post("/v1/auth/login", (req: Request, res: Response) => {
      try {
        const result = UserService.login(req.body);
        return res.send(result);
      } catch (err: any) {
        console.error(err);
        err = { error: err };
        return res.status(400).send(err);
      }
    });
  }
}
