import { Router, type Express, type Request, type Response } from "express";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";

import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import { HttpStatus } from "domain/enums/HttpStatus";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PackageModel } from "domain/types/package/PackageModel";
import { PaginationOrder } from "domain/types/pagination/PaginationOpts";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import {
  packIdScheme,
  uploadPackageScheme,
} from "presentation/schemes/package/packageSchemes";
import { PaginationSchema } from "presentation/schemes/pagination/PaginationSchema";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class PackageRestApiController {
  constructor(
    private readonly app: Express,
    private readonly storage: S3StorageService
  ) {
    const router = Router();

    this.app.use("/v1/packages", router);

    router.post("/", asyncHandler(this.uploadPackage));
    router.get("/", asyncHandler(this.listPackages));
    router.get("/:id", asyncHandler(this.getPackage));
  }

  private uploadPackage = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{
      content: OQContentStructure;
    }>(req.body, uploadPackageScheme()).validate();

    const data = await this.storage.uploadPackage(req, validatedData.content);
    return res.status(HttpStatus.OK).send(data);
  };

  private getPackage = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{ packId: number }>(
      { packId: Number(req.params.id) },
      packIdScheme()
    ).validate();

    const data = await this.storage.getPackage(validatedData.packId);
    return res.status(HttpStatus.OK).send(data);
  };

  private listPackages = async (req: Request, res: Response) => {
    const paginationOpts = await new PaginationSchema<PackageModel>({
      data: {
        sortBy: req.query.sortBy as keyof PackageModel,
        order: req.query.order as PaginationOrder,
        limit: Number(req.query.limit),
        offset: Number(req.query.offset),
      },
      possibleSortByFields: ["id", "title", "created_at", "author"],
    }).validate();

    const data = await this.storage.listPackages(paginationOpts, {
      select: PACKAGE_SELECT_FIELDS,
      relations: ["author"],
      relationSelects: { author: ["id", "username"] },
    });

    return res.status(HttpStatus.OK).send(data);
  };
}
