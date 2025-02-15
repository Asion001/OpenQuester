import {
  DeleteObjectCommand,
  GetObjectCommand,
  PutObjectCommand,
  S3Client,
} from "@aws-sdk/client-s3";
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";
import { type Request } from "express";

import { ContentStructureService } from "application/services/ContentStructureService";
import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import {
  UPLOAD_FILE_LINK_EXPIRES_IN,
  UPLOAD_PACKAGE_LINKS_EXPIRES_IN,
} from "domain/constants/storage";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { FileSource } from "domain/enums/file/FileSource";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { HttpStatus } from "domain/enums/HttpStatus";
import { Permissions } from "domain/enums/Permissions";
import { ClientError } from "domain/errors/ClientError";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { PackageListItemDTO } from "domain/types/dto/game/items/PackageIListItemDTO";
import { S3Context } from "domain/types/file/S3Context";
import { StorageServiceModel } from "domain/types/file/StorageServiceModel";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PackageUploadResponse } from "domain/types/package/PackageUploadResponse";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { UsageEntries } from "domain/types/usage/usage";
import { type File } from "infrastructure/database/models/File";
import { type Package } from "infrastructure/database/models/Package";
import { Permission } from "infrastructure/database/models/Permission";
import { type User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { DependencyService } from "infrastructure/services/dependency/DependencyService";
import { StorageUtils } from "infrastructure/utils/StorageUtils";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class S3StorageService implements StorageServiceModel {
  private _client: S3Client;

  constructor(
    private readonly s3Context: S3Context,
    private readonly contentStructureService: ContentStructureService,
    private readonly fileRepository: FileRepository,
    private readonly packageRepository: PackageRepository,
    private readonly fileUsageRepository: FileUsageRepository,
    private readonly userRepository: UserRepository,
    private readonly dependencyService: DependencyService
  ) {
    this._client = new S3Client({
      credentials: {
        accessKeyId: this.s3Context.accessKey,
        secretAccessKey: this.s3Context.secretKey,
      },
      forcePathStyle: true,
      endpoint: this.s3Context.host,
      region: this.s3Context.region,
    });
  }

  public async generatePresignedUrl(
    type: "PUT" | "GET",
    bucket: string,
    filenameWithPath: string,
    expiresInSeconds: number,
    filename: string
  ) {
    let command: PutObjectCommand | GetObjectCommand;
    let opts = {};

    switch (type) {
      case "PUT":
        command = new PutObjectCommand({
          Bucket: bucket,
          Key: filenameWithPath,
          ContentMD5: Buffer.from(filename, "hex").toString("base64"),
          IfNoneMatch: "*",
        });

        opts = {
          expiresIn: expiresInSeconds,
          unhoistableHeaders: new Set(["Content-MD5", "If-None-Match"]),
        };
        break;
      case "GET":
        command = new GetObjectCommand({
          Bucket: bucket,
          Key: filenameWithPath,
        });
        opts = {
          expiresIn: expiresInSeconds,
        };
        break;
    }

    return getSignedUrl(this._client, command, opts);
  }

  public async get(filename: string) {
    const filePath = StorageUtils.parseFilePath(filename);

    const baseUrl = this.s3Context.host.endsWith("/")
      ? `${this.s3Context.host}${this.s3Context.bucket}`
      : `${this.s3Context.host}/${this.s3Context.bucket}`;

    return `${baseUrl}/${filePath}`;
  }

  public async upload(
    filename: string,
    expiresIn: number = UPLOAD_FILE_LINK_EXPIRES_IN
  ) {
    return this.performFileUpload(filename, expiresIn);
  }

  public async performBulkFilesUpload(
    filesData: { files: FileDTO[]; user?: User; pack?: Package },
    expiresIn: number
  ): Promise<Record<string, string>> {
    const links: Record<string, string> = {};
    for (const file of filesData.files) {
      const filename = ValueUtils.getRawFilename(file.filename.toLowerCase());

      links[filename] = await this.generatePresignedUrl(
        "PUT",
        this.s3Context.bucket,
        `${file.path}${filename}`,
        expiresIn,
        filename
      );
    }

    const files = (await this.fileRepository.bulkWriteFiles(filesData.files))
      .generatedMaps as File[];

    await this.fileUsageRepository.writeBulkUsage({
      files,
      pack: filesData.pack,
    });

    return links;
  }

  public async performFileUpload(
    filename: string,
    expiresIn: number,
    source?: FileSource,
    user?: User,
    pack?: Package
  ) {
    if (!source) {
      source = FileSource.S3;
    }

    const filenameWithPath = StorageUtils.parseFilePath(filename);

    const link = await this.generatePresignedUrl(
      "PUT",
      this.s3Context.bucket,
      filenameWithPath,
      expiresIn,
      filename
    );

    const file = await this._writeFile(
      filenameWithPath.replace(filename, ""),
      filename,
      source
    );

    if (user || pack) {
      this._writeUsage(file, user, pack);
    }
    return link;
  }

  public async delete(filename: string, req: Request) {
    const usageRecords = await this.dependencyService.getFileUsage(filename);

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
      throw new ClientError(ClientResponse.NO_PERMISSION, HttpStatus.FORBIDDEN);
    }

    const file = await this.fileRepository.getFileByFilename(filename);

    if (!file) {
      return;
    }

    const fileUsage = await this.dependencyService.getFileUsage(file.filename);

    if (fileUsage.length > 0) {
      // Do not delete file if it's still used somewhere
      return;
    }

    const filePath = StorageUtils.parseFilePath(filename);
    this.fileRepository.removeFile(filename);

    const command = new DeleteObjectCommand({
      Bucket: this.s3Context.bucket,
      Key: filePath,
    });
    this._client.send(command);
  }

  public async getPackage(
    packId: string | number
  ): Promise<PackageListItemDTO> {
    const id = ValueUtils.validateId(packId);
    const pack = await this.packageRepository.get(id, {
      select: PACKAGE_SELECT_FIELDS,
      relations: ["author"],
      relationSelects: { author: ["id", "username"] },
    });
    if (!pack) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }
    // TODO: This will be reworked after moving to better package model
    return {
      id: pack.id,
      ageRestriction: AgeRestriction.NONE,
      createdAt: pack?.created_at,
      rounds: pack.content.rounds.length,
      tags: pack.content.metadata.tags,
      title: pack.title,
      author: {
        id: pack.author.id,
        username: pack.author.username,
      },
    };
  }

  public async listPackages(
    paginationOpts: PaginationOpts<Package>,
    selectOptions: SelectOptions<Package>
  ): Promise<PaginatedResult<PackageListItemDTO[]>> {
    const paginatedList = await this.packageRepository.list(
      paginationOpts,
      selectOptions
    );

    const packageListItems = paginatedList.data.map(
      (pack): PackageListItemDTO => {
        return {
          id: pack.id,
          ageRestriction: AgeRestriction.NONE,
          createdAt: pack.created_at,
          rounds: pack.content.rounds.length,
          tags: pack.content.metadata.tags,
          title: pack.title,
          author: {
            id: pack.author.id,
            username: pack.author.username,
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
    content: OQContentStructure,
    expiresIn: number = UPLOAD_PACKAGE_LINKS_EXPIRES_IN
  ): Promise<PackageUploadResponse> {
    const author = await this.userRepository.getUserByRequest(req, {
      select: USER_SELECT_FIELDS,
      relations: [],
    });

    if (!author || !author.id) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const pack = await this.packageRepository.create(content, author);

    const links = await this.contentStructureService.getUploadLinksForFiles(
      content,
      this,
      pack,
      expiresIn
    );
    return {
      id: pack.id,
      uploadLinks: links,
    };
  }

  private async _handleAvatarRemove(
    req: Request,
    filename: string,
    usage: UsageEntries
  ) {
    const user = await this.userRepository.getUserByRequest(req, {
      select: ["id"],
      relations: ["permissions"],
      relationSelects: { permissions: ["id", "name"] },
    });

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
      await this.userRepository.update(user);
    }
  }

  private async _deleteAvatarUsage(filename: string, user: User) {
    const file = await this.fileRepository.getFileByFilename(filename);
    if (file) {
      await this.fileUsageRepository.deleteUsage(file, user);
    }
  }

  private async _writeUsage(file: File, user?: User, pack?: Package) {
    return this.fileUsageRepository.writeUsage(file, user, pack);
  }

  private async _writeFile(path: string, filename: string, source: FileSource) {
    return this.fileRepository.writeFile(path, filename, source);
  }
}
