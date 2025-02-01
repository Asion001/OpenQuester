import fs from "fs";
import path from "path";
import Swagger from "swagger-ui-express";
import { type Request, type Response, Router } from "express";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";

import { type ApiContext } from "services/context/ApiContext";
import { Logger } from "utils/Logger";

const SWAGGER_PREFIX = "[SWAGGER]: ";

export class SwaggerRestApiController {
  private _jsonPath: string;
  private _specification: { [key: string]: any };

  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();
    this._jsonPath = path.join(process.cwd(), "../openapi/schema.json");

    app.use("/v1/api-docs", router);

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
