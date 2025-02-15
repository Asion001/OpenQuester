import { Router, type Express, type Request, type Response } from "express";
import fs from "fs";
import path from "path";
import Swagger from "swagger-ui-express";

import { Logger } from "infrastructure/utils/Logger";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";

const SWAGGER_PREFIX = "[SWAGGER]: ";

export class SwaggerRestApiController {
  private _jsonPath: string;
  private _specification: { [key: string]: any };

  constructor(private readonly app: Express) {
    const router = Router();
    this._jsonPath = path.join(process.cwd(), "../openapi/schema.json");

    this.app.use("/v1/api-docs", router);

    this._specification = this._getSpecification();

    router.use("/", Swagger.serve);
    router.get("/raw", asyncHandler(this._getRaw));
    router.get("/", Swagger.setup(this.specification));
  }

  public get specification() {
    if (!this._specification) {
      this._specification = this._getSpecification();
    }

    return this._specification;
  }

  private _getSpecification() {
    const oas = fs.readFileSync(this._jsonPath, "utf-8");
    try {
      Logger.gray("Specification reading initiated", SWAGGER_PREFIX);
      return JSON.parse(oas);
    } catch {
      return {};
    }
  }

  private _getRaw = async (req: Request, res: Response) => {
    res.download(this._jsonPath);
  };
}
