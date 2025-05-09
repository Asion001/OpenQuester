import { type Request } from "express";
import { type Server as IOServer } from "socket.io";

import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { SocketIOEvents } from "domain/enums/SocketIOEvents";
import { ClientError } from "domain/errors/ClientError";
import { GameCreateDTO } from "domain/types/dto/game/GameCreateDTO";
import { GameEvent, GameEventDTO } from "domain/types/dto/game/GameEventDTO";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";
import { GamePaginationOpts } from "domain/types/pagination/game/GamePaginationOpts";
import { GameRepository } from "infrastructure/database/repositories/GameRepository";
import { UserService } from "../user/UserService";

export class GameService {
  constructor(
    private readonly io: IOServer,
    private readonly gameRepository: GameRepository,
    private readonly userService: UserService
  ) {
    //
  }

  public async get(
    gameId: string,
    updatedTtl?: number
  ): Promise<GameListItemDTO> {
    return this.gameRepository.getGame(gameId, updatedTtl);
  }

  public async list(paginationOpts: GamePaginationOpts) {
    return this.gameRepository.getAllGames(paginationOpts);
  }

  public async delete(req: Request, gameId: string) {
    const user = await this.userService.getUserByRequest(req, {
      select: ["id"],
      relations: [],
    });

    if (!user) {
      throw new ClientError(
        ClientResponse.USER_NOT_FOUND,
        HttpStatus.NOT_FOUND
      );
    }

    await this.gameRepository.deleteGame(user.id, gameId);

    const eventDataDTO: GameEventDTO = {
      event: GameEvent.DELETED,
      data: {
        id: gameId,
      },
    };

    this.io.emit(SocketIOEvents.GAMES, eventDataDTO);
  }

  public async create(req: Request, gameData: GameCreateDTO) {
    const createdByUser = await this.userService.getUserByRequest(req, {
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
      gameData,
      createdByUser
    );

    this._emitSocketGameCreated(gameDataOutput);

    return gameDataOutput;
  }

  public async cleanupAllGames() {
    return this.gameRepository.cleanupAllGames();
  }

  public async cleanOrphanedGames() {
    return this.gameRepository.cleanOrphanedGames();
  }

  private _emitSocketGameCreated(gameData: GameListItemDTO) {
    const eventDataDTO: GameEventDTO = {
      event: GameEvent.CREATED,
      data: gameData,
    };

    this.io.emit(SocketIOEvents.GAMES, eventDataDTO);
  }
}
