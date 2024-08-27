import { type Request, type Response, Router, type Express } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { StorageServiceFactory } from "../../services/storage/StorageServiceFactory";
import { fileContext } from "../../types/file/fileContext";
import { storageType } from "../../types/storage/storageType";
import { storage } from "../../types/storage/storage";
import { verifyContentJSON } from "../../middleware/file/fileMiddleware";

export class PackageRestApiController {
  private _storageService!: IStorage;
  private _fileContext!: fileContext;

  constructor(app: Express, storageType?: storageType, storageName?: storage) {
    const router = Router();
    app.use("/v1/package", router);

    this._fileContext = StorageServiceFactory.createFileContext(storageType);

    this._storageService = StorageServiceFactory.createStorageService(
      storageName as storage,
      this._fileContext
    );

    router.post(
      "/upload/",
      verifyContentJSON,
      async (req: Request, res: Response) => {
        try {
          const bucket = req.body.bucket;
          const _content = req.body.content;

          const data = await this._storageService.uploadPackage(
            _content,
            bucket ?? this._fileContext.bucket
          );

          return res.status(200).send({ content: data });
        } catch (err: any) {
          return res.status(400).send({ error: err.message });
        }
      }
    );
  }
}
