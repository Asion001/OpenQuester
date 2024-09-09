import { type Request, type Response, Router } from "express";

import { IStorage } from "../../interfaces/file/IStorage";
import { verifyContentJSONMiddleware } from "../../middleware/file/fileMiddleware";
import { type ApiContext } from "../../services/context/ApiContext";
import { throttleByUserMiddleware } from "../../middleware/throttleMiddleware";
import { HttpStatus } from "../../enums/HttpStatus";
import { ErrorController } from "../../error/ErrorController";
import { StorageServiceFactory } from "../../services/storage/StorageServiceFactory";
import { Database } from "../../database/Database";
import { JWTUtils } from "../../utils/JWTUtils";
import { ClientResponse } from "../../enums/ClientResponse";
import { UserRepository } from "../../database/repositories/UserRepository";

export class PackageRestApiController {
  private _storageService!: IStorage;
  private _db: Database;

  constructor(ctx: ApiContext) {
    const router = Router();
    const app = ctx.app;
    this._db = ctx.db;

    // Init storage service
    const storageFactory = ctx.serverServices.get(StorageServiceFactory);
    this._storageService = storageFactory.createStorageService(ctx, "minio");

    app.use("/v1/package", router);

    router.post(
      "/upload",
      verifyContentJSONMiddleware,
      throttleByUserMiddleware,
      this.uploadPackage
    );
  }

  private uploadPackage = async (req: Request, res: Response) => {
    try {
      const userRepository = UserRepository.getRepository(this._db);
      const payload = JWTUtils.getTokenPayload(req.headers?.authorization);
      const user = await userRepository.get(payload.id);

      if (!user || !user.id) {
        return res
          .status(HttpStatus.BAD_REQUEST)
          .send(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
      }

      const data = await this._storageService.uploadPackage(
        req.body.content,
        user
      );
      return res.status(HttpStatus.OK).send(data);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
