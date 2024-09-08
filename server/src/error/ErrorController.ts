import { QueryFailedError } from "typeorm";
import { HttpStatus } from "../enums/HttpStatus";
import { ServerResponse } from "../enums/ServerResponse";
import { Logger } from "../utils/Logger";
import { ClientError } from "./ClientError";
import { OQError } from "./OQError";
import { ServerError } from "./ServerError";
import { ClientResponse } from "../enums/ClientResponse";
import { ErrorRepository } from "../database/repositories/ErrorRepository";
import { Database } from "../database/Database";
import { AppDataSource } from "../database/DataSource";

export class ErrorController {
  private static _errorRepository: ErrorRepository;
  private static _db: Database;

  /**
   * Resolves error and returns it message and code
   */
  public static async resolveError(error: unknown): Promise<{
    message: string;
    code: number;
  }> {
    if (!(error instanceof OQError)) {
      let message: string = "";

      if (error instanceof Error) {
        message += error.message;
      }

      error = new ServerError(message);
    }

    if (error instanceof ServerError) {
      // Write server errors to DB
      this.writeErrorToDB(error.message);
      Logger.error(`Internal server error: ${error.message}`);
      return {
        message: ServerResponse.INTERNAL_SERVER_ERROR,
        code: HttpStatus.INTERNAL,
      };
    }

    if (error instanceof ClientError) {
      return {
        message: error.message,
        code: error.code,
      };
    }

    Logger.error(`Error of unknown type caught: ${JSON.stringify(error)}`);
    return {
      message: ServerResponse.INTERNAL_SERVER_ERROR,
      code: HttpStatus.INTERNAL,
    };
  }

  public static async writeErrorToDB(message: string) {
    await this._connectDB();
    if (!this._errorRepository) {
      this._errorRepository = ErrorRepository.getRepository(this._db);
    }

    this._errorRepository.writeError(message);
  }

  public static async resolveQueryError(error: unknown) {
    let err = error;
    if (
      // Catch query error from TypeORM (if user already exists)
      err instanceof QueryFailedError &&
      err.message.includes("duplicate key value")
    ) {
      err = new ClientError(
        ClientResponse.USER_ALREADY_EXISTS,
        HttpStatus.NOT_FOUND
      );
    }
    const { message, code } = await ErrorController.resolveError(err);
    return { message, code };
  }

  private static async _connectDB() {
    if (this._db && this._db.dataSource.isInitialized) {
      return;
    }

    this._db = Database.getInstance(AppDataSource);
    await this._db.build();
  }
}
