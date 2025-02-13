import { type Request, type Response, Router } from "express";

import { type ApiContext } from "application/context/ApiContext";
import { TranslateService as ts } from "application/services/text/TranslateService";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { StorageServiceModel } from "domain/types/file/StorageServiceModel";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";
import { filenameScheme } from "presentation/schemes/file/fileSchemes";

export class FileRestApiController {
  private readonly _storageService: StorageServiceModel;

  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._storageService = this.ctx.serverServices.storage.createStorageService(
      this.ctx,
      "minio"
    );

    app.use("/v1/files", router);

    router.get("/:filename", asyncHandler(this.getFile));
    router.post("/:filename", asyncHandler(this.uploadFile));
    router.delete("/:filename", asyncHandler(this.deleteFile));
  }

  private getFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    const url = await this._storageService.get(validatedData.filename);
    res.send({ url });
  };

  private uploadFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    const url = await this._storageService.upload(validatedData.filename);
    res.send({ url });
  };

  private deleteFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    await this._storageService.delete(validatedData.filename, req.session);

    res.status(HttpStatus.NO_CONTENT).send({
      message: ts.localize(ClientResponse.DELETE_REQUEST_SENT, req.headers),
    });
  };

  private async _validateParamsFilename(req: Request) {
    return new RequestDataValidator<{ filename: string }>(
      { filename: req.params.filename },
      filenameScheme()
    ).validate();
  }
}
