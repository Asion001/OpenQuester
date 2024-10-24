import { type Request, type Response, Router } from "express";

import { ApiContext } from "../../services/context/ApiContext";
import Swagger from "swagger-ui-express";
import path from "path";
import fs from "fs";
import { ErrorController } from "../../error/ErrorController";

export class SwaggerRestApiController {
  private _jsonPath: string;

  constructor(ctx: ApiContext) {
    const app = ctx.app;
    const router = Router();
    this._jsonPath = path.join(process.cwd(), "./schema.json");

    app.use("/v1/api-docs", router);

    router.use("/", Swagger.serve);
    router.get("/raw", this.getRaw);
    router.get("/", Swagger.setup(this.getSpecification()));
  }

  private getSpecification() {
    const oas = fs.readFileSync(this._jsonPath, "utf-8");
    try {
      return JSON.parse(oas);
    } catch {
      return {};
    }
  }

  private getRaw = async (req: Request, res: Response) => {
    try {
      res.download(this._jsonPath);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(err);
      return res.status(code).send({ error: message });
    }
  };
}
