import { type Request, type Response, Router } from "express";

import { type ApiContext } from "../../services/context/ApiContext";
import { IStorage } from "../../interfaces/file/IStorage";
import { verifyContentJSONMiddleware } from "../../middleware/file/FileMiddleware";
import { throttleByUserMiddleware } from "../../middleware/ThrottleMiddleware";
import { HttpStatus } from "../../enums/HttpStatus";
import { ErrorController } from "../../error/ErrorController";
import { Database } from "../../database/Database";
import { JWTUtils } from "../../utils/JWTUtils";
import { ClientResponse } from "../../enums/ClientResponse";
import { UserRepository } from "../../database/repositories/UserRepository";
import { TranslateService as ts } from "../../services/text/TranslateService";
import { ServerServices } from "../../services/ServerServices";

export class PackageRestApiController {
  private _storageService: IStorage;
  private _db: Database;

  constructor(ctx: ApiContext) {
    const router = Router();
    const app = ctx.app;
    this._db = ctx.db;

    this._storageService = ServerServices.storage.createStorageService(
      ctx,
      "minio"
    );

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
        const lang = ts.parseHeader(req.headers["accept-language"]);
        return res
          .status(HttpStatus.BAD_REQUEST)
          .send(ts.translate(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND, lang));
      }

      const data = await this._storageService.uploadPackage(
        req.body.content,
        user,
        undefined,
        ts.parseHeader(req.headers["accept-language"])
      );
      return res.status(HttpStatus.OK).send(data);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
