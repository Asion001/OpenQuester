import { type Request, type Response, Router } from "express";

import { type ApiContext } from "../../services/context/ApiContext";
import { IStorage } from "../../interfaces/file/IStorage";
import { verifyContentJSONMiddleware } from "../../middleware/file/FileMiddleware";
import { throttleMiddleware } from "../../middleware/ThrottleMiddleware";
import { HttpStatus } from "../../enums/HttpStatus";
import { ErrorController } from "../../error/ErrorController";
import { Database } from "../../database/Database";
import { ServerServices } from "../../services/ServerServices";

export class PackageRestApiController {
  private _storageService: IStorage;
  private _db: Database;

  constructor(ctx: ApiContext) {
    const router = Router();
    const app = ctx.app;
    this._db = ctx.db;

    this._storageService = ServerServices.storage.createStorageService(
      ctx,
      "minio"
    );

    app.use("/v1/package", router);

    router.post(
      "/upload",
      verifyContentJSONMiddleware,
      throttleMiddleware,
      this.uploadPackage
    );
  }

  private uploadPackage = async (req: Request, res: Response) => {
    try {
      const data = await this._storageService.uploadPackage(req);
      return res.status(HttpStatus.OK).send(data);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };
}
