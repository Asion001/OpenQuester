import * as Minio from "minio";
import http from "http";
import https from "https";

import { Request } from "express";

import { IStorage } from "types/file/IStorage";
import { IS3Context } from "types/file/IS3Context";
import { PackageRepository } from "database/repositories/PackageRepository";
import { Database } from "database/Database";
import { User } from "database/models/User";
import { FileRepository } from "database/repositories/FileRepository";
import { StorageUtils } from "utils/StorageUtils";
import { Logger } from "utils/Logger";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { File } from "database/models/File";
import { Package } from "database/models/Package";
import { UserRepository } from "database/repositories/UserRepository";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { UsageEntries } from "types/usage/usage";
import { Permission } from "database/models/Permission";
import { Permissions } from "enums/Permissions";
import { ContentStructureService } from "services/ContentStructureService";
import { ApiContext } from "services/context/ApiContext";
import { ServerServices } from "services/ServerServices";
import { DependencyService } from "services/dependency/DependencyService";
import { ValueUtils } from "utils/ValueUtils";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { ISelectOptions } from "types/ISelectOptions";
import { IPackageListItem } from "types/game/items/IPackageIListItem";
import { EAgeRestriction } from "enums/game/EAgeRestriction";

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
  private _fileUsageRepository: FileUsageRepository;
  private _userRepository: UserRepository;
  private readonly ALLOWED_TYPES = new Set([
    "jpg",
    "jpeg",
    "mp4",
    "mp3",
    "mkv",
    "png",
  ]);

  constructor(ctx: ApiContext) {
    this._s3Context = ServerServices.storage.createFileContext("s3");
    this._contentStructureService = ServerServices.content;

    this._db = ctx.db;
    this._fileRepository = FileRepository.getRepository(this._db);
    this._packageRepository = PackageRepository.getRepository(this._db);
    this._fileUsageRepository = FileUsageRepository.getRepository(this._db);
    this._userRepository = UserRepository.getRepository(this._db);

    this._agentOptions = {
      keepAlive: true,
      maxSockets: 100,
      keepAliveMsecs: 500,
      timeout: 5000,
      noDelay: true,
      scheduling: "lifo",
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
      partSize: 10 * 1024 * 1024,
      transportAgent: this._agent,
    });

    this._warmup();
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
    req: Request,
    expiresIn: number = 30 // Default: 30 sec
  ) {
    return this.performFileUpload(req.body.filename, expiresIn);
  }

  public async performFileUpload(
    filename: string,
    expiresIn: number,
    user?: User,
    pack?: Package
  ) {
    const fileExtension = ValueUtils.getFileExtension(filename);

    if (!this.ALLOWED_TYPES.has(fileExtension)) {
      throw new ClientError(ClientResponse.UNSUPPORTED_FILE_TYPE, 400, {
        type: fileExtension,
        file: filename,
      });
    }

    const filenameWithPath = StorageUtils.parseFilePath(filename);
    const link = await this._client.presignedPutObject(
      this._s3Context.bucket,
      filenameWithPath,
      expiresIn
    );

    const file = await this._writeFile(
      filenameWithPath.replace(filename, ""),
      filename
    );

    if (user || pack) {
      this._writeUsage(file, user, pack);
    }
    return link;
  }

  public async delete(req: Request) {
    const filename = req.body.filename;
    const usageRecords = await DependencyService.getFileUsage(
      this._db,
      filename
    );

    if (usageRecords.length < 1) {
      return;
    }

    const usage: UsageEntries = {
      users: [],
      packages: [],
    };

    usageRecords.forEach((u) => {
      if (u.user) {
        usage.users.push(u.user);
      }
      if (u.package?.author) {
        usage.packages.push(u.package);
      }
    });

    const usedInPackages = usage.packages.length > 0;
    const usedByUsers = usage.users.length > 0;

    const result = { removed: false };

    if (usedInPackages && !usedByUsers) {
      const packages = usage.packages
        .map((p) => p.content?.metadata?.title)
        .join(", ");
      throw new ClientError(ClientResponse.DELETE_FROM_PACKAGE, 400, {
        packages,
      });
    }

    if (usedByUsers) {
      result.removed = await this._handleAvatarRemove(req, filename, usage);
    }

    if (!result.removed) {
      throw new ClientError(ClientResponse.NO_PERMISSION);
    }

    const file = await this._fileRepository.getFileByFilename(filename);

    if (!file) {
      return;
    }

    const fileUsage = await this._fileUsageRepository.getUsage(file);

    if (fileUsage.length > 0) {
      // Do not delete file if it's still used somewhere
      return;
    }

    const filePath = StorageUtils.parseFilePath(filename);
    this._fileRepository.removeFile(filename);
    return this._client.removeObject(this._s3Context.bucket, filePath);
  }

  public async getPackage(packId: string | number): Promise<IPackageListItem> {
    const id = ValueUtils.validateId(packId);
    const pack = await this._packageRepository.get(id);
    if (!pack) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }
    // TODO: This will be reworked after moving to better package model
    return {
      id: pack.id,
      ageRestriction: EAgeRestriction.NONE,
      createdAt: pack?.created_at,
      rounds: pack.content.rounds.length,
      tags: pack.content.metadata.tags,
      title: pack.title,
      author: {
        id: pack.author.id,
        name: pack.author.name,
      },
    };
  }

  public async listPackages(
    paginationOpts: IPaginationOpts<IPackage>,
    selectOptions?: ISelectOptions<IPackage>
  ): Promise<IPaginatedResult<IPackageListItem[]>> {
    const paginatedList = await this._packageRepository.list(
      paginationOpts,
      selectOptions
    );

    const packageListItems = paginatedList.data.map(
      (pack): IPackageListItem => {
        return {
          id: pack.id,
          ageRestriction: EAgeRestriction.NONE,
          createdAt: pack.created_at,
          rounds: pack.content.rounds.length,
          tags: pack.content.metadata.tags,
          title: pack.title,
          author: {
            id: pack.author.id,
            name: pack.author.name,
          },
        };
      }
    );

    return {
      data: packageListItems,
      pageInfo: { ...paginatedList.pageInfo },
    };
  }

  public async uploadPackage(
    req: Request,
    expiresIn: number = 60 * 5 // Default: 5 min
  ) {
    const content = req.body.content;
    const author = await UserRepository.getUserByHeader(
      this._db,
      req.headers?.authorization
    );

    if (!author || !author.id) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const pack = await this._packageRepository.create(content, author);

    const links = await this._contentStructureService.getUploadLinksForFiles(
      content,
      this,
      pack,
      expiresIn
    );
    return links;
  }

  private async _handleAvatarRemove(
    req: Request,
    filename: string,
    usage: UsageEntries
  ) {
    const user = await UserRepository.getUserByHeader(
      this._db,
      req.headers.authorization,
      { relations: ["permissions"] }
    );

    if (!user) {
      return false;
    }

    const hasPermission = await Permission.checkPermission(
      user,
      Permissions.DELETE_FILE
    );

    for (const u of usage.users) {
      if (u.id !== user.id && !hasPermission) {
        continue;
      }

      if (u.avatar?.filename === filename) {
        await this._deleteUserAvatar(u);
        await this._deleteAvatarUsage(filename, u);
        return true;
      }
    }

    return false;
  }

  private async _deleteUserAvatar(user: User) {
    if (user.avatar) {
      user.avatar = undefined;
      await this._userRepository.update(user);
    }
  }

  private async _deleteAvatarUsage(filename: string, user: User) {
    const file = await this._fileRepository.getFileByFilename(filename);
    if (file) {
      await this._fileUsageRepository.deleteUsage(file, user);
    }
  }

  private async _writeUsage(file: File, user?: User, pack?: Package) {
    return this._fileUsageRepository.writeUsage(file, user, pack);
  }

  private async _writeFile(path: string, filename: string) {
    try {
      await this._client.statObject(this._s3Context.bucket, path + filename);
      Logger.pink(`Duplicated file upload: ${path + filename}`, MINIO_PREFIX);
      path = "duplicated/";
    } catch {
      //
    }
    return this._fileRepository.writeFile(path, filename);
  }

  private async _warmup() {
    for (let i = 0; i < 10; i++) {
      this._client.listBuckets();
    }
  }
}
