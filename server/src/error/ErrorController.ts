import { QueryFailedError } from "typeorm";
import { HttpStatus } from "../enums/HttpStatus";
import { ServerResponse } from "../enums/ServerResponse";
import { Logger } from "../utils/Logger";
import { ClientError } from "./ClientError";
import { OQError } from "./OQError";
import { ServerError } from "./ServerError";
import { ClientResponse } from "../enums/ClientResponse";

export class ErrorController {
  /**
   * Resolves error and returns it message and code
   */
  public static resolveError(error: unknown): {
    message: string;
    code: number;
  } {
    if (!(error instanceof OQError)) {
      error = new ServerError(ServerResponse.INTERNAL_SERVER_ERROR);
    }

    if (error instanceof ServerError) {
      Logger.error(`Server internal error: ${error.message}`);
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

  public static resolveQueryError(error: unknown) {
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
    const { message, code } = ErrorController.resolveError(err);
    return { message, code };
  }
}
