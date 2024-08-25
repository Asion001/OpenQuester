import { IS3Context } from "../../../interfaces/file/IS3Context";
import { ValueUtils } from "../../../utils/ValueUtils";

export class S3Context implements IS3Context {
  public host: string;
  public port: number;
  public useSSL: boolean;
  public bucket: string;
  public accessKey: string;
  public secretKey: string;

  constructor(data: IS3Context) {
    if (!ValueUtils.isValidObject(data)) {
      throw new Error("File context data is invalid");
    }
    this.host = data.host;
    this.bucket = data.bucket;
    this.port = data.port;
    this.useSSL = data.useSSL;
    this.accessKey = data.accessKey;
    this.secretKey = data.secretKey;
  }
}
