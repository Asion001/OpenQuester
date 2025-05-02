import { Router, type Express, type Request, type Response } from "express";

import { TranslateService as ts } from "application/services/text/TranslateService";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";
import { filenameScheme } from "presentation/schemes/file/fileSchemes";

export class FileRestApiController {
  constructor(
    private readonly app: Express,
    private readonly storage: S3StorageService
  ) {
    const router = Router();

    this.app.use("/v1/files", router);

    router.get("/:filename", asyncHandler(this.getFile));
    router.post("/:filename", asyncHandler(this.uploadFile));
    router.delete("/:filename", asyncHandler(this.deleteFile));
  }

  private getFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    const url = await this.storage.get(validatedData.filename);
    res.send({ url });
  };

  private uploadFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    const url = await this.storage.upload(validatedData.filename);
    res.send({ url });
  };

  private deleteFile = async (req: Request, res: Response) => {
    const validatedData = await this._validateParamsFilename(req);

    await this.storage.delete(validatedData.filename, req);

    res.status(HttpStatus.NO_CONTENT).send({
      message: await ts.localize(
        ClientResponse.DELETE_REQUEST_SENT,
        req.headers
      ),
    });
  };

  private async _validateParamsFilename(req: Request) {
    return new RequestDataValidator<{ filename: string }>(
      { filename: req.params.filename },
      filenameScheme()
    ).validate();
  }
}
