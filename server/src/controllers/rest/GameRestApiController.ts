import { type Request, type Response, Router } from "express";

import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { ClientError } from "error/ClientError";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import { createGameScheme, gameIdScheme } from "schemes/game/gameSchemes";
import { PaginationSchema } from "schemes/pagination/PaginationSchema";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { type ApiContext } from "services/context/ApiContext";
import { type GameService } from "services/game/GameService";
import { GameCreateDTO } from "types/dto/game/GameCreateDTO";
import { GameDTO } from "types/dto/game/GameDTO";
import { GameEvent, GameEventDTO } from "types/dto/game/GameEventDTO";
import { PaginationOrder } from "types/pagination/PaginationOpts";

export class GameRestApiController {
  private readonly _gameService: GameService;

  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();

    this._gameService = this.ctx.serverServices.game;

    app.use("/v1/games", router);

    router.get(`/`, asyncHandler(this.listGames));
    router.post(`/`, asyncHandler(this.createGame));
    router.get(`/:id`, asyncHandler(this.getGame));
    router.delete(`/:id`, asyncHandler(this.deleteGame));
  }

  private deleteGame = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{ gameId: string }>(
      { gameId: req.params.gameId },
      gameIdScheme()
    ).validate();

    await this._gameService.delete(validatedData.gameId);

    const eventDataDTO: GameEventDTO = {
      event: GameEvent.DELETED,
      data: {
        id: validatedData.gameId,
      },
    };
    this.ctx.io.emit(SocketIOEvents.GAMES, eventDataDTO);

    return res.status(HttpStatus.NO_CONTENT).send();
  };

  private getGame = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{ gameId: string }>(
      { gameId: req.params.gameId },
      gameIdScheme()
    ).validate();

    const result = await this._gameService.get(this.ctx, validatedData.gameId);

    return res.status(HttpStatus.OK).send(result);
  };

  private listGames = async (req: Request, res: Response) => {
    const paginationOpts = await new PaginationSchema<GameDTO>({
      data: {
        sortBy: req.query.sortBy as keyof GameDTO,
        order: req.query.order as PaginationOrder,
        limit: Number(req.query.limit),
        offset: Number(req.query.offset),
      },
      possibleSortByFields: [
        "id",
        "title",
        "createdAt",
        "createdBy",
        "maxPlayers",
        "players",
        "startedAt",
      ],
    }).validate();

    const result = await this._gameService.list(this.ctx, paginationOpts);
    return res.status(HttpStatus.OK).send(result);
  };

  private createGame = async (req: Request, res: Response) => {
    const gameCreateDTO = await new RequestDataValidator<GameCreateDTO>(
      req.body,
      createGameScheme()
    ).validate();

    if (Object.keys(gameCreateDTO).length < 1) {
      throw new ClientError(ClientResponse.NO_GAME_DATA);
    }

    const result = await this._gameService.create(this.ctx, req, gameCreateDTO);
    return res.status(HttpStatus.OK).send(result);
  };
}
