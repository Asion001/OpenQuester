import { type Request, type Response, Router } from "express";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";

import { type ApiContext } from "services/context/ApiContext";
import { IStorage } from "types/file/IStorage";
import { verifyContentJSONMiddleware } from "middleware/file/FileMiddleware";
import { HttpStatus } from "enums/HttpStatus";
import { PaginationSchema } from "schemes/pagination/PaginationSchema";
import { EPaginationOrder } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import {
  packIdScheme,
  uploadPackageScheme,
} from "schemes/package/packageSchemes";

export class PackageRestApiController {
  private readonly _storageService: IStorage;

  constructor(private readonly ctx: ApiContext) {
    const router = Router();
    const app = this.ctx.app;

    this._storageService = this.ctx.serverServices.storage.createStorageService(
      this.ctx,
      "minio"
    );

    app.use("/v1/packages", router);

    router.post(
      "/",
      verifyContentJSONMiddleware,
      asyncHandler(this.uploadPackage)
    );
    router.get("/", asyncHandler(this.listPackages));
    router.get("/:id", asyncHandler(this.getPackage));
  }

  private uploadPackage = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{
      content: OQContentStructure;
    }>(req.body, uploadPackageScheme()).validate();

    const data = await this._storageService.uploadPackage(
      validatedData.content,
      req.session
    );
    return res.status(HttpStatus.OK).send(data);
  };

  private getPackage = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{ packId: number }>(
      { packId: Number(req.params.id) },
      packIdScheme()
    ).validate();

    const data = await this._storageService.getPackage(validatedData.packId);
    return res.status(HttpStatus.OK).send(data);
  };

  private listPackages = async (req: Request, res: Response) => {
    const paginationOpts = await new PaginationSchema<IPackage>({
      data: {
        sortBy: req.query.sortBy as keyof IPackage,
        order: req.query.order as EPaginationOrder,
        limit: Number(req.query.limit),
        offset: Number(req.query.offset),
      },
      possibleSortByFields: ["id", "title", "created_at", "author"],
    }).validate();

    const data = await this._storageService.listPackages(paginationOpts, {
      relations: ["author"],
    });

    return res.status(HttpStatus.OK).send(data);
  };
}
