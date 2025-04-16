import { type Request } from "express";
import { type Server as IOServer } from "socket.io";

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
  constructor(
    private readonly io: IOServer,
    private readonly gameRepository: GameRepository,
    private readonly userRepository: UserRepository
  ) {
    //
  }

  public async get(
    gameId: string,
    updatedTtl?: number
  ): Promise<GameListItemDTO> {
    return this.gameRepository.getGame(gameId, updatedTtl);
  }

  public async list(paginationOpts: PaginationOpts<GameDTO>) {
    return this.gameRepository.getAllGames(paginationOpts);
  }

  public async delete(gameId: string) {
    await this.gameRepository.deleteGame(gameId);

    const eventDataDTO: GameEventDTO = {
      event: GameEvent.DELETED,
      data: {
        id: gameId,
      },
    };

    this.io.emit(SocketIOEvents.GAMES, eventDataDTO);
  }

  public async create(req: Request, gameData: GameCreateDTO) {
    const createdByUser = await this.userRepository.getUserByRequest(req, {
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

  private _emitSocketGameCreated(gameData: GameListItemDTO) {
    const eventDataDTO: GameEventDTO = {
      event: GameEvent.CREATED,
      data: gameData,
    };

    this.io.emit(SocketIOEvents.GAMES, eventDataDTO);
  }
}
