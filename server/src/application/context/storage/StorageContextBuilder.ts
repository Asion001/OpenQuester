import { ServerResponse } from "domain/enums/ServerResponse";
import { ServerError } from "domain/errors/ServerError";
import { S3Context } from "domain/types/file/S3Context";
import { Environment } from "infrastructure/config/Environment";
import { TemplateUtils } from "infrastructure/utils/TemplateUtils";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class StorageContextBuilder {
  public static buildS3Context(): S3Context {
    const env = Environment.instance;
    try {
      return {
        host: env.getEnvVar("S3_HOST", "string"),
        bucket: env.getEnvVar("S3_BUCKET", "string"),
        accessKey: env.getEnvVar("S3_ACCESS_KEY", "string"),
        secretKey: env.getEnvVar("S3_SECRET_KEY", "string"),
        region: env.getEnvVar("S3_REGION", "string"),
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
