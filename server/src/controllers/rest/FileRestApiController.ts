import { type Request, type Response, Router } from "express";

import { IStorage } from "interfaces/file/IStorage";
import { validateFilename } from "middleware/file/FileMiddleware";
import { ApiContext } from "services/context/ApiContext";
import { ClientResponse } from "enums/ClientResponse";
import { ErrorController } from "error/ErrorController";
import { HttpStatus } from "enums/HttpStatus";
import { TranslateService as ts } from "services/text/TranslateService";
import { ServerServices } from "services/ServerServices";
import { throttleMiddleware } from "middleware/ThrottleMiddleware";

export class FileRestApiController {
  private _storageService: IStorage;

  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();

    this._storageService = ServerServices.storage.createStorageService(
      ctx,
      "minio"
    );

    app.use("/v1/file", router);

    router.get("/", validateFilename, this.getFile);
    router.post("/", validateFilename, throttleMiddleware, this.uploadFile);
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
