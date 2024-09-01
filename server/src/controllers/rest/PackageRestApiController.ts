import { type Request, type Response, Router } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { verifyContentJSONMiddleware } from "../../middleware/file/fileMiddleware";
import { type ApiContext } from "../../services/context/ApiContext";
import { throttleByUserMiddleware } from "../../middleware/throttleMiddleware";
import { HttpStatus } from "../../enums/HttpStatus";
import { ErrorController } from "../../error/ErrorController";

export class PackageRestApiController {
  private _storageService!: IStorage;

  constructor(ctx: ApiContext, storageService: IStorage) {
    const router = Router();
    const app = ctx.app;
    this._storageService = storageService;

    app.use("/v1/package", router);

    router.post(
      "/upload",
      verifyContentJSONMiddleware,
      throttleByUserMiddleware,
      this.uploadPackage
    );
  }

  private uploadPackage = async (req: Request, res: Response) => {
    try {
      const data = await this._storageService.uploadPackage(req.body.content);
      return res.status(HttpStatus.OK).send(data);
    } catch (err: unknown) {
      const { message, code } = ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
