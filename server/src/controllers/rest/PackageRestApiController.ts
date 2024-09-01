import { type Request, type Response, Router } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { verifyContentJSONMiddleware } from "../../middleware/file/fileMiddleware";
import { type ApiContext } from "../../services/context/ApiContext";
import { throttleByUserMiddleware } from "../../middleware/throttleMiddleware";

export class PackageRestApiController {
  private _storageService!: IStorage;

  constructor(ctx: ApiContext, storageService: IStorage) {
    const router = Router();
    const app = ctx.app;

    app.use("/v1/package", router);
    this._storageService = storageService;

    router.post(
      "/upload",
      verifyContentJSONMiddleware,
      throttleByUserMiddleware,
      async (req: Request, res: Response) => {
        try {
          const data = await this._storageService.uploadPackage(
            req.body.content
          );
          return res.status(200).send(data);
        } catch (err: any) {
          return res.status(400).send({ error: err.message });
        }
      }
    );
  }
}
