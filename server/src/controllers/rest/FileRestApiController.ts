import { type Request, type Response, Router } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { validateFilename } from "../../middleware/file/FileMiddleware";
import { ApiContext } from "../../services/context/ApiContext";
import { ClientResponse } from "../../enums/ClientResponse";
import { ErrorController } from "../../error/ErrorController";
import { HttpStatus } from "../../enums/HttpStatus";
import { StorageServiceFactory } from "../../services/storage/StorageServiceFactory";

export class FileRestApiController {
  private _storageService: IStorage;

  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();

    // Get storage service
    const ss = ctx.serverServices;

    this._storageService = ss
      .get(StorageServiceFactory)
      .createStorageService(ctx, "minio");

    app.use("/v1/file", router);

    router.get("/", validateFilename, this.getFile);
    router.post("/", validateFilename, this.uploadFile);
    router.delete("/", validateFilename, this.deleteFile);
  }

  private getFile = async (req: Request, res: Response) => {
    try {
      const url = await this._storageService.get(req.body.filename);
      res.send({ url });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      res.status(code).send({ error: message });
    }
  };

  private uploadFile = async (req: Request, res: Response) => {
    try {
      const url = await this._storageService.upload(req.body.filename);
      res.send({ url });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      res.status(code).send({ error: message });
    }
  };

  private deleteFile = async (req: Request, res: Response) => {
    try {
      // No need to await, delete does not return any info
      this._storageService.delete(req.body.filename);
      res
        .status(HttpStatus.NO_CONTENT)
        .send({ message: ClientResponse.DELETE_REQUEST_SENT });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      res.status(code).send({ error: message });
    }
  };
}
