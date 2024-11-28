import * as Minio from "minio";
import http from "http";
import https from "https";

import { IStorage } from "../../interfaces/file/IStorage";
import { IS3Context } from "../../interfaces/file/IS3Context";
import { OQContentStructure } from "../../interfaces/file/structures/OQContentStructure";
import { ContentStructureService } from "../ContentStructureService";
import { ApiContext } from "../context/ApiContext";
import { PackageRepository } from "../../database/repositories/PackageRepository";
import { Database } from "../../database/Database";
import { User } from "../../database/models/User";
import { FileRepository } from "../../database/repositories/FileRepository";
import { ServerServices } from "../ServerServices";
import { StorageUtils } from "../../utils/StorageUtils";
import { Logger } from "../../utils/Logger";

const MINIO_PREFIX = "[MINIO]: ";

export class MinioStorageService implements IStorage {
  private _client: Minio.Client;
  private _s3Context: IS3Context;
  private _contentStructureService: ContentStructureService;
  private _agentOptions: http.AgentOptions;
  private _agent: http.Agent;
  private _db: Database;
  private _fileRepository: FileRepository;
  private _packageRepository: PackageRepository;

  constructor(ctx: ApiContext) {
    this._s3Context = ServerServices.storage.createFileContext("s3");
    this._contentStructureService = ServerServices.content;

    this._db = ctx.db;
    this._fileRepository = FileRepository.getRepository(this._db);
    this._packageRepository = PackageRepository.getRepository(this._db);

    this._agentOptions = {
      keepAlive: true,
      maxSockets: 50,
      keepAliveMsecs: 1000,
      noDelay: true,
    };

    this._agent = this._s3Context.useSSL
      ? new https.Agent(this._agentOptions)
      : new http.Agent(this._agentOptions);

    this._client = new Minio.Client({
      endPoint: this._s3Context.host,
      port: this._s3Context.port,
      useSSL: this._s3Context.useSSL,
      accessKey: this._s3Context.accessKey,
      secretKey: this._s3Context.secretKey,
      partSize: 5 * 1024 * 1024,
      transportAgent: this._agent,
    });
  }

  public async get(
    filename: string,
    expiresIn: number = 60 * 30 // Default: 30 min
  ) {
    const filePath = StorageUtils.parseFilePath(filename);
    return this._client.presignedGetObject(
      this._s3Context.bucket,
      filePath,
      expiresIn
    );
  }

  public async upload(
    filename: string,
    expiresIn: number = 30 // Default: 30 sec
  ) {
    const filenameWithPath = StorageUtils.parseFilePath(filename);
    const link = await this._client.presignedPutObject(
      this._s3Context.bucket,
      filenameWithPath,
      expiresIn
    );
    this._writeFile(filenameWithPath.replace(filename, ""), filename);
    return link;
  }

  public async delete(filename: string) {
    const filePath = StorageUtils.parseFilePath(filename);
    this._fileRepository.removeFile(filename);
    return this._client.removeObject(this._s3Context.bucket, filePath);
  }

  public async uploadPackage(
    content: OQContentStructure,
    author: User,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    const links = await this._contentStructureService.getUploadLinksForFiles(
      content,
      this,
      expiresIn
    );
    const exists = await this._packageRepository.create(content, author);
    if (!exists) {
      Logger.pink(
        `Package "${content.metadata.id}" uploaded by "ID:${author.id}"`,
        MINIO_PREFIX
      );
    }
    return links;
  }

  private async _writeFile(path: string, filename: string) {
    try {
      await this._client.statObject(this._s3Context.bucket, path + filename);
      Logger.pink(`Duplicated file upload: ${path + filename}`, MINIO_PREFIX);
      path = "duplicated/";
    } catch {
      //
    }
    this._fileRepository.writeFile(path, filename);
  }
}
