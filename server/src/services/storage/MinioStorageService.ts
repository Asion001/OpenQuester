import * as Minio from "minio";

import { IStorage } from "../../interfaces/file/IStorage";
import { IS3Context } from "../../interfaces/file/IS3Context";
import { OQContentStructure } from "../../interfaces/file/structures/OQContentStructure";
import { ContentStructureService } from "../ContentStructureService";
import { SHA256Characters } from "../../constants/sha256";
import { ValueUtils } from "../../utils/ValueUtils";

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
    const filePath = this._parseFilePath(filename);
    return this._client.presignedGetObject(bucket, filePath, expiresIn);
  }

  public async upload(
    filename: string,
    bucket: string,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    const filePath = this._parseFilePath(filename);
    return this._client.presignedPutObject(bucket, filePath, expiresIn);
  }

  public async delete(filename: string, bucket: string) {
    const filePath = this._parseFilePath(filename);
    return this._client.removeObject(bucket, filePath);
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

  private _parseFilePath(filename: string) {
    filename = ValueUtils.getRawFilename(filename.toLowerCase());
    if (
      filename.length < 2 ||
      !SHA256Characters.includes(filename[0]) ||
      !SHA256Characters.includes(filename[1])
    ) {
      return `other/${filename}`;
    }
    return `${filename[0]}/${filename.substring(0, 2)}/${filename}`;
  }
}
