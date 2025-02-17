import { type Request } from "express";

import { ContentStructureService } from "application/services/ContentStructureService";
import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import { UPLOAD_PACKAGE_LINKS_EXPIRES_IN } from "domain/constants/storage";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { ClientError } from "domain/errors/ClientError";
import { PackageListItemDTO } from "domain/types/dto/game/items/PackageIListItemDTO";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PackageUploadResponse } from "domain/types/package/PackageUploadResponse";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { Package } from "infrastructure/database/models/Package";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class PackageService {
  constructor(
    private readonly packageRepository: PackageRepository,
    private readonly userRepository: UserRepository,
    private readonly contentStructureService: ContentStructureService,
    private readonly storage: S3StorageService
  ) {
    //
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
      this.storage,
      pack,
      expiresIn
    );
    return {
      id: pack.id,
      uploadLinks: links,
    };
  }
}
