import { Request, Response, Router } from "express";
import { ApiContext } from "../../services/context/ApiContext";
import { IStorage } from "../../interfaces/file/IStorage";
import { StorageServiceFactory } from "../../services/storage/StorageService";
import { StorageContextBuilder } from "../../services/context/storage/StorageContextBuilder";
import { S3Context } from "../../services/context/storage/S3Context";
import { fileContext } from "../../types/file/fileContext";
import { Logger } from "../../utils/Logger";
import { storageType } from "../../types/storage/storageType";
import { storage } from "../../types/storage/storage";
import { Environment } from "../../config/Environment";

export class FileRestApiController {
  private _storageService!: IStorage;
  private _fileContext!: fileContext;

  constructor(
    ctx: ApiContext,
    storageType?: storageType,
    storageName?: storage
  ) {
    const app = ctx.app;
    const router = Router();
    app.use("/v1/file", router);

    this._init(storageType, storageName);

    router.get("/", async (req: Request, res: Response) => {
      try {
        const bucket = req.body.bucket;
        const url = await this._storageService.get(
          req.body.filename,
          bucket ?? this._fileContext.bucket
        );
        res.send({ url });
      } catch (err: any) {
        Logger.error(err.message);
        res.status(400).send({ error: err.message });
      }
    });

    router.post("/", async (req: Request, res: Response) => {
      try {
        const bucket = req.body.bucket;
        const url = await this._storageService.upload(
          req.body.filename,
          bucket ?? this._fileContext.bucket
        );
        res.send({ url });
      } catch (err: any) {
        Logger.error(err.message);
        res.status(400).send({ error: err.message });
      }
    });
  }

  /** File context and storage service init */
  private _init(storageType?: storageType, storageName?: storage) {
    storageType =
      storageType ?? Environment.getEnvVar("STORAGE_TYPE", "string", "s3");
    storageName =
      storageName ?? Environment.getEnvVar("STORAGE_NAME", "string", "minio");

    switch (storageType) {
      case "s3":
        this._fileContext = StorageContextBuilder.buildS3Context() as S3Context;
    }

    this._storageService = StorageServiceFactory.createStorageService(
      storageName as storage,
      this._fileContext
    );
  }
}
