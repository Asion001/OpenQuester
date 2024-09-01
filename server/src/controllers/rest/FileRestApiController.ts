import { type Request, type Response, Router } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { validateFilename } from "../../middleware/file/fileMiddleware";
import { ApiContext } from "../../services/context/ApiContext";
import { ApiResponse } from "../../enums/ApiResponse";

export class FileRestApiController {
  private _storageService!: IStorage;

  constructor(ctx: ApiContext, storageService: IStorage) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/file", router);
    this._storageService = storageService;

    router.get("/", validateFilename, async (req: Request, res: Response) => {
      try {
        const url = await this._storageService.get(req.body.filename);
        res.send({ url });
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });

    router.post("/", validateFilename, async (req: Request, res: Response) => {
      try {
        const url = await this._storageService.upload(req.body.filename);
        res.send({ url });
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });

    router.delete(
      "/",
      validateFilename,
      async (req: Request, res: Response) => {
        try {
          // No need to await, delete does not return any info
          this._storageService.delete(req.body.filename);
          res.status(204).send({ message: ApiResponse.DELETE_REQUEST_SENT });
        } catch (err: any) {
          res.status(400).send({ error: err.message });
        }
      }
    );
  }
}
