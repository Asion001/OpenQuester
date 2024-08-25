import { Environment } from "../../../config/Environment";
import { Logger } from "../../../utils/Logger";
import { ValueUtils } from "../../../utils/ValueUtils";
import { S3Context } from "./S3Context";

export class StorageContextBuilder {
  public static buildS3Context(): S3Context | undefined {
    try {
      return {
        host: Environment.getEnvVar("S3_HOST", "string"),
        port: Environment.getEnvVar("S3_PORT", "number"),
        useSSL: Environment.getEnvVar("S3_USE_SSL", "boolean"),
        bucket: Environment.getEnvVar("S3_BUCKET", "string"),
        accessKey: Environment.getEnvVar("S3_ACCESS_KEY", "string"),
        secretKey: Environment.getEnvVar("S3_SECRET_KEY", "string"),
      };
    } catch (err: unknown) {
      let text: string;
      if (err && ValueUtils.isError(err)) {
        const error = err as Error;
        text = `Error while initializing S3 context: ${error.message}`;
      } else {
        text = `Something went wrong during S3 context initialization`;
      }
      Logger.error(text);
      throw new Error(text);
    }
  }
}
