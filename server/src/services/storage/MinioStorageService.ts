import * as Minio from "minio";

import { IStorage } from "../../interfaces/file/IStorage";
import { IS3Context } from "../../interfaces/file/IS3Context";
import { OQContentStructure } from "../../interfaces/file/structures/OQContentStructure";
import { ContentStructureService } from "../ContentStructureService";

export class MinioStorageService implements IStorage {
  private _client: Minio.Client;

  constructor(context: IS3Context) {
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
    // TODO: Implement cache in future
    return this._client.presignedGetObject(bucket, filename, expiresIn);
  }

  public async upload(
    filename: string,
    bucket: string,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    return this._client.presignedPutObject(bucket, filename, expiresIn);
  }

  public async delete(filename: string, bucket: string) {
    return this._client.removeObject(bucket, filename);
  }

  public async uploadPackage(
    content: object,
    bucket: string,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    const updatedContent = await ContentStructureService.addLinksForFiles(
      content as OQContentStructure,
      this,
      bucket,
      expiresIn
    );
    return updatedContent;
  }
}
