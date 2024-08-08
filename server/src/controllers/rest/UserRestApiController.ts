import { Express, Request, Response } from "express";
import { UserService } from "../../services/UserService";
import { Database } from "../../database/Database";

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

    app.post("/v1/users/update/:id", async (req: Request, res: Response) => {
      try {
        return res.status(400).send({ message: "Testing update by id" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });

    app.post("/v1/users/delete/:id", async (req: Request, res: Response) => {
      try {
        return res.status(400).send({ message: "Testing delete by id" });
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
