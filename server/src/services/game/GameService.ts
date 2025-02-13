import { type Request } from "express";

import { GameRepository } from "database/repositories/GameRepository";
import { UserRepository } from "database/repositories/UserRepository";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { ClientError } from "error/ClientError";
import { ApiContext } from "services/context/ApiContext";
import { GameCreateDTO } from "types/dto/game/GameCreateDTO";
import { GameDTO } from "types/dto/game/GameDTO";
import { GameEvent, GameEventDTO } from "types/dto/game/GameEventDTO";
import { GameListItemDTO } from "types/dto/game/GameListItemDTO";
import { PaginationOpts } from "types/pagination/PaginationOpts";

export class GameService {
  private _gameRepository?: GameRepository;

  public async get(
    ctx: ApiContext,
    gameId: string
  ): Promise<GameListItemDTO | undefined> {
    return this.gameRepository.getGame(ctx, gameId);
  }

  public async list(ctx: ApiContext, paginationOpts: PaginationOpts<GameDTO>) {
    return this.gameRepository.getAllGames(ctx, paginationOpts);
  }

  public async delete(gameId: string) {
    return this.gameRepository.deleteGame(gameId);
  }

  public async create(ctx: ApiContext, req: Request, gameData: GameCreateDTO) {
    const createdByUser = await UserRepository.getUserByRequest(ctx.db, req, {
      select: ["id", "username"],
      relations: [],
    });

    if (!createdByUser) {
      throw new ClientError(
        ClientResponse.USER_NOT_FOUND,
        HttpStatus.NOT_FOUND
      );
    }

    const gameDataOutput = await this.gameRepository.createGame(
      ctx,
      gameData,
      createdByUser
    );

    this._emitSocketGameCreated(ctx, gameDataOutput);

    return gameDataOutput;
  }

  private _emitSocketGameCreated(ctx: ApiContext, gameData: GameListItemDTO) {
    const eventDataDTO: GameEventDTO = {
      event: GameEvent.CREATED,
      data: gameData,
    };

    ctx.io.emit(SocketIOEvents.GAMES, eventDataDTO);
  }

  private get gameRepository() {
    if (!this._gameRepository) {
      this._gameRepository = GameRepository.getInstance();
    }

    return this._gameRepository;
  }
}
