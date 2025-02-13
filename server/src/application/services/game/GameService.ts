import { type Request } from "express";

import { ApiContext } from "application/context/ApiContext";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { SocketIOEvents } from "domain/enums/SocketIOEvents";
import { ClientError } from "domain/errors/ClientError";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { GameDTO } from "domain/types/dto/game/GameDTO";
import { GameEvent, GameEventDTO } from "domain/types/dto/game/GameEventDTO";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";

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
