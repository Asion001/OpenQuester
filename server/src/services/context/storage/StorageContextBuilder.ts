import { Environment } from "config/Environment";
import { IS3Context } from "types/file/IS3Context";
import { ValueUtils } from "utils/ValueUtils";
import { ServerResponse } from "enums/ServerResponse";
import { ServerError } from "error/ServerError";
import { TemplateUtils } from "utils/TemplateUtils";

export class StorageContextBuilder {
  public static buildS3Context(): IS3Context | undefined {
    const env = Environment.instance;
    try {
      return {
        host: env.getEnvVar("S3_HOST", "string"),
        port: env.getEnvVar("S3_PORT", "number"),
        useSSL: env.getEnvVar("S3_USE_SSL", "boolean"),
        bucket: env.getEnvVar("S3_BUCKET", "string"),
        accessKey: env.getEnvVar("S3_ACCESS_KEY", "string"),
        secretKey: env.getEnvVar("S3_SECRET_KEY", "string"),
      };
    } catch (err: unknown) {
      let text: string;
      if (err && ValueUtils.isError(err)) {
        const error = err as Error;
        text = TemplateUtils.text(ServerResponse.BAD_S3_INIT_WITH_MESSAGE, {
          message: error.message,
        });
      } else {
        text = ServerResponse.BAD_S3_INIT;
      }
      throw new ServerError(text);
    }
  }
}
