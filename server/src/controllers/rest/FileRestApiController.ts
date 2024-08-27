import { type Request, type Response, Router, type Express } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { StorageServiceFactory } from "../../services/storage/StorageServiceFactory";
import { fileContext } from "../../types/file/fileContext";
import { storageType } from "../../types/storage/storageType";
import { storage } from "../../types/storage/storage";

export class FileRestApiController {
  private _storageService!: IStorage;
  private _fileContext!: fileContext;

  constructor(app: Express, storageType?: storageType, storageName?: storage) {
    const router = Router();
    app.use("/v1/file", router);

    this._fileContext = StorageServiceFactory.createFileContext(storageType);

    this._storageService = StorageServiceFactory.createStorageService(
      storageName as storage,
      this._fileContext
    );

    router.get("/", async (req: Request, res: Response) => {
      try {
        const bucket = req.body.bucket;
        const url = await this._storageService.get(
          req.body.filename,
          bucket ?? this._fileContext.bucket
        );
        res.send({ url });
      } catch (err: any) {
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
        res.status(400).send({ error: err.message });
      }
    });

    // TODO: Implement delete permission validation (on refactoring)
    router.delete("/", async (req: Request, res: Response) => {
      try {
        const bucket = req.body.bucket;
        // TODO: Review. Probably no need to await until file deletes because we cannot know -
        // - if this it deletes successfully (or even existed) without making additional requests.
        this._storageService.delete(
          req.body.filename,
          bucket ?? this._fileContext.bucket
        );
        res.status(204).send({ message: "Delete request sent" });
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });
  }
}
