import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { IStorage } from "types/file/IStorage";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { TranslateService as ts } from "services/text/TranslateService";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import { RequestDataValidator as RequestDataValidator } from "schemes/RequestDataValidator";
import { filenameScheme } from "schemes/file/fileSchemes";

export class FileRestApiController {
  private readonly _storageService: IStorage;

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

    await this._storageService.delete(validatedData.filename, req.headers);

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
