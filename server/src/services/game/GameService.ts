import { IncomingHttpHeaders } from "http";

import { IGameCreateData } from "types/game/IGameCreate";
import { IGameListItem } from "types/game/IGameListItem";
import { UserRepository } from "database/repositories/UserRepository";
import { ApiContext } from "services/context/ApiContext";
import { SocketIOEvents } from "enums/SocketIOEvents";
import { EGameEvent, IGameEvent } from "types/game/IGameEvent";
import { IGame } from "types/game/IGame";
import { GameRepository } from "database/repositories/GameRepository";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";

export class GameService {
  private _gameRepository?: GameRepository;

  public async get(
    ctx: ApiContext,
    gameId: string
  ): Promise<IGameListItem | undefined> {
    return this._getGameRepository().getGame(ctx, gameId);
  }

  public async list(ctx: ApiContext, paginationOpts: IPaginationOpts<IGame>) {
    return this._getGameRepository().getAllGames(ctx, paginationOpts);
  }

  public async create(
    ctx: ApiContext,
    gameData: IGameCreateData,
    headers: IncomingHttpHeaders
  ) {
    const createdByUser = await UserRepository.getUserByHeader(
      ctx.db,
      headers.authorization,
      { select: ["id", "name"], relations: [] }
    );

    const gameDataOutput = await this._getGameRepository().createGame(
      ctx,
      gameData,
      createdByUser
    );

    this._emitSocketGameCreated(ctx, gameDataOutput);

    return gameDataOutput;
  }

  private _emitSocketGameCreated(ctx: ApiContext, gameData: IGameListItem) {
    ctx.io.emit(SocketIOEvents.GAMES, {
      event: EGameEvent.CREATED,
      data: gameData,
    } as IGameEvent);
  }

  private _getGameRepository() {
    if (!this._gameRepository) {
      this._gameRepository = GameRepository.getInstance();
    }

    return this._gameRepository;
  }
}
