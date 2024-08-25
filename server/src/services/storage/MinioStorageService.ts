import { IStorage } from "../../interfaces/file/IStorage";
import * as Minio from "minio";
import { S3Context } from "../context/storage/S3Context";

export class MinioStorageService implements IStorage {
  private _client: Minio.Client;

  constructor(context: S3Context) {
    this._client = new Minio.Client({
      endPoint: context.host,
      port: context.port,
      useSSL: context.useSSL,
      accessKey: context.accessKey,
      secretKey: context.secretKey,
    });
  }

  public async get(
    filename: string,
    bucket: string,
    expiresIn: number = 60 * 30 // Default: 30 min
  ) {
    return this._client.presignedGetObject(bucket, filename, expiresIn);
  }

  public async upload(
    filename: string,
    bucket: string,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    return this._client.presignedPutObject(bucket, filename, expiresIn);
  }

  public async delete(
    filename: string,
    bucket: string,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    // TODO: Review / check
    return this._client.presignedUrl("delete", bucket, filename, expiresIn);
  }
}
