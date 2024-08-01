import { Express, Request, Response } from "express";
import { UserService } from "../../services/UserService";

export class AuthRestApiController {
  constructor(app: Express) {
    app.post("/v1/auth/register", (req: Request, res: Response) => {
      const result = UserService.register(req.body);
      return res.send(result);
    });

    app.post("/v1/auth/login", (req: Request, res: Response) => {
      const result = UserService.login(req.body);
      return res.send(result);
    });
  }
}
