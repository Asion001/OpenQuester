import { IncomingHttpHeaders } from "http";

import { HttpStatus } from "enums/HttpStatus";
import { ServerResponse } from "enums/ServerResponse";
import { Logger } from "utils/Logger";
import { TranslateService as ts } from "services/text/TranslateService";
import { Language } from "types/text/translation";
import { ValueUtils } from "utils/ValueUtils";
import { TemplateUtils } from "utils/TemplateUtils";
import { ClientError } from "error/ClientError";
import { OQError } from "error/OQError";
import { ServerError } from "error/ServerError";

export class ErrorController {
  /**
   * Resolves error and returns it message and code
   */
  public static async resolveError(
    error: unknown,
    headers?: IncomingHttpHeaders
  ): Promise<{
    message: string;
    code: number;
  }> {
    error = this._formatError(error, ts.parseHeaders(headers));

    if (!(error instanceof OQError)) {
      let message: string = "";

      if (error instanceof Error) {
        message += error.message;
      }

      error = new ServerError(message);
    }

    if (error instanceof ServerError) {
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

  private static _formatError<T>(error: T, lang?: Language): T {
    if (!(error instanceof OQError)) {
      return error;
    }
    const args = error.textArgs;

    let message: string;
    if (ts.translationKeys.includes(error.message)) {
      message = ts.translate(error.message, lang);
    } else {
      message = error.message;
    }

    if (args && ValueUtils.isObject(args) && !ValueUtils.isEmpty(args)) {
      message = TemplateUtils.text(message, args);
    }

    error.message = message;
    return error;
  }
}
