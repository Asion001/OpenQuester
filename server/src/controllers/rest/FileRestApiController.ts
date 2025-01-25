import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { IStorage } from "types/file/IStorage";
import { validateFilename } from "middleware/file/FileMiddleware";
import { ClientResponse } from "enums/ClientResponse";
import { ErrorController } from "error/ErrorController";
import { HttpStatus } from "enums/HttpStatus";
import { TranslateService as ts } from "services/text/TranslateService";
import { ServerServices } from "services/ServerServices";

export class FileRestApiController {
  private _storageService: IStorage;

  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();

    this._storageService = ServerServices.storage.createStorageService(
      ctx,
      "minio"
    );

    app.use("/v1/files", router);

    router.get("/", validateFilename, this.getFile);
    router.post("/", validateFilename, this.uploadFile);
    router.delete("/", validateFilename, this.deleteFile);
  }

  private getFile = async (req: Request, res: Response) => {
    try {
      const url = await this._storageService.get(req.body.filename);
      res.send({ url });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      res.status(code).send({ error: message });
    }
  };

  private uploadFile = async (req: Request, res: Response) => {
    try {
      const url = await this._storageService.upload(req);
      res.send({ url });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      res.status(code).send({ error: message });
    }
  };

  private deleteFile = async (req: Request, res: Response) => {
    try {
      await this._storageService.delete(req);

      res.status(HttpStatus.NO_CONTENT).send({
        message: ts.localize(ClientResponse.DELETE_REQUEST_SENT, req.headers),
      });
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      res.status(code).send({ error: message });
    }
  };
}
