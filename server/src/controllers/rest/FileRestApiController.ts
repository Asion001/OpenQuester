import { Express, Request, Response } from "express";

export class FileRestApiController {
  constructor(app: Express) {
    app.get("/v1/file/", async (req: Request, res: Response) => {
      try {
        // TODO: Implement
        res.send(req.body);
      } catch (err: any) {
        return res.status(400).send({ error: err.message });
      }
    });
  }
}
