import fs from "fs";
import path from "path";
import Swagger from "swagger-ui-express";
import { type Request, type Response, Router } from "express";

import { ApiContext } from "services/context/ApiContext";
import { ErrorController } from "error/ErrorController";
import { Logger } from "utils/Logger";

const SWAGGER_PREFIX = "[SWAGGER]: ";

export class SwaggerRestApiController {
  private _jsonPath: string;
  private _specification: { [key: string]: any };

  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();
    this._jsonPath = path.join(process.cwd(), "../openapi/schema.json");

    app.use("/v1/api-docs", router);

    this._specification = this._getSpecification();

    router.use("/", Swagger.serve);
    router.get("/raw", this._getRaw);
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
    try {
      res.download(this._jsonPath);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
