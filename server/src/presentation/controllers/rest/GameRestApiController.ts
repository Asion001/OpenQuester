import { Router, type Express, type Request, type Response } from "express";

import { type GameService } from "application/services/game/GameService";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ClientError } from "domain/errors/ClientError";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { GameDTO } from "domain/types/dto/game/GameDTO";
import { PaginationOrder } from "domain/types/pagination/PaginationOpts";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import {
  createGameScheme,
  gameIdScheme,
} from "presentation/schemes/game/gameSchemes";
import { PaginationSchema } from "presentation/schemes/pagination/PaginationSchema";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class GameRestApiController {
  constructor(
    private readonly app: Express,
    private readonly gameService: GameService
  ) {
    const router = Router();

    this.app.use("/v1/games", router);

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

    await this.gameService.delete(validatedData.gameId);

    return res.status(HttpStatus.NO_CONTENT).send();
  };

  private getGame = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<{ gameId: string }>(
      { gameId: req.params.gameId },
      gameIdScheme()
    ).validate();

    const result = await this.gameService.get(validatedData.gameId);

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

    const result = await this.gameService.list(paginationOpts);
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

    const result = await this.gameService.create(req, gameCreateDTO);
    return res.status(HttpStatus.OK).send(result);
  };
}
