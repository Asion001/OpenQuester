import { Router, type Express, type Request, type Response } from "express";

import { PackageService } from "application/services/package/PackageService";
import { HttpStatus } from "domain/enums/HttpStatus";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PackageInputDTO } from "domain/types/dto/package/PackageInputDTO";
import { PackagePaginationOpts } from "domain/types/pagination/package/PackagePaginationOpts";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import {
  packagePaginationScheme,
  packIdScheme,
  uploadPackageScheme,
} from "presentation/schemes/package/packageSchemes";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class PackageRestApiController {
  constructor(
    private readonly app: Express,
    private readonly packageService: PackageService
  ) {
    const router = Router();

    this.app.use("/v1/packages", router);

    router.post("/", asyncHandler(this.uploadPackage));
    router.get("/", asyncHandler(this.listPackages));
    router.get("/:id", asyncHandler(this.getPackage));
  }

  private uploadPackage = async (req: Request, res: Response) => {
    // Validate and get data that can be safely saved in DB
    const validatedData = await new RequestDataValidator<{
      content: PackageDTO;
    }>(req.body, uploadPackageScheme()).validate();

    const data = await this.packageService.uploadPackage(
      req,
      validatedData.content
    );
    return res.status(HttpStatus.OK).send(data);
  };

  private getPackage = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<PackageInputDTO>(
      { packageId: Number(req.params.id) },
      packIdScheme()
    ).validate();

    const data = await this.packageService.getPackage(validatedData.packageId);
    return res.status(HttpStatus.OK).send(data);
  };

  private listPackages = async (req: Request, res: Response) => {
    const paginationOpts =
      await new RequestDataValidator<PackagePaginationOpts>(
        req.query as unknown as PackagePaginationOpts,
        packagePaginationScheme()
      ).validate();

    const data = await this.packageService.listPackages(paginationOpts);

    return res.status(HttpStatus.OK).send(data);
  };
}
