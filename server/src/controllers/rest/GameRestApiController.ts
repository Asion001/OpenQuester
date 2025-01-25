import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { type GameService } from "services/game/GameService";
import { ErrorController } from "error/ErrorController";
import { ServerServices } from "services/ServerServices";
import { HttpStatus } from "enums/HttpStatus";
import { validateWithSchema } from "middleware/SchemaMiddleware";
import { CreateGameSchema } from "managers/game/CreateGameSchema";

export class GameRestApiController {
  private _gameService: GameService;

  constructor(private ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._gameService = ServerServices.game;

    app.use("/v1/games", router);

    router.get(`/`, this.listGames);
    router.post(
      `/`,
      validateWithSchema(this.ctx.db, CreateGameSchema),
      this.createGame
    );
    router.get(`(/:id)?`, this.getGame);
  }

  private getGame = async (req: Request, res: Response) => {
    try {
      const result = await this._gameService.get(req.params.id);
      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private listGames = async (req: Request, res: Response) => {
    try {
      const result = await this._gameService.list();
      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };

  private createGame = async (req: Request, res: Response) => {
    try {
      const result = await this._gameService.create(this.ctx, req);
      return res.status(HttpStatus.OK).send(result);
    } catch (err: unknown) {
      const { message, code } = await ErrorController.resolveError(
        err,
        req.headers
      );
      return res.status(code).send({ error: message });
    }
  };
}
