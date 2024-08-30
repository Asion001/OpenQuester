import { type Request, type Response, Router, type Express } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { StorageServiceFactory } from "../../services/storage/StorageServiceFactory";
import { fileContext } from "../../types/file/fileContext";
import { storageType } from "../../types/storage/storageType";
import { storage } from "../../types/storage/storage";
import { validateFilename } from "../../middleware/file/fileMiddleware";

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

    router.get("/", validateFilename, async (req: Request, res: Response) => {
      try {
        const url = await this._storageService.get(req.body.filename);
        res.send({ url });
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });

    router.post("/", validateFilename, async (req: Request, res: Response) => {
      try {
        const url = await this._storageService.upload(req.body.filename);
        res.send({ url });
      } catch (err: any) {
        res.status(400).send({ error: err.message });
      }
    });

    router.delete(
      "/",
      validateFilename,
      async (req: Request, res: Response) => {
        try {
          // No need to await, delete does not return any info
          this._storageService.delete(req.body.filename);
          res.status(204).send({ message: "Delete request sent" });
        } catch (err: any) {
          res.status(400).send({ error: err.message });
        }
      }
    );
  }
}
