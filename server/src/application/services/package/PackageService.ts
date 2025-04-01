import { type Request } from "express";

import { PACKAGE_SELECT_FIELDS } from "domain/constants/package";
import { UPLOAD_PACKAGE_LINKS_EXPIRES_IN } from "domain/constants/storage";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PackageUploadResponse } from "domain/types/package/PackageUploadResponse";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

// * TODO: Clear packages and games, implement migrations and updated Package model -> Done!
// * TODO: Fix package upload. For start retrieve DB record as it is -> Done!
// TODO: When everything working with DB-like package retrieving, implement DTO
// TODO: Update schema.json according to new types, clean up old types, use ts-prune to check for unused exports
export class PackageService {
  constructor(
    private readonly packageRepository: PackageRepository,
    private readonly userRepository: UserRepository,
    private readonly storage: S3StorageService
  ) {
    //
  }

  public async getPackage(packId: string | number): Promise<any> {
    const id = ValueUtils.validateId(packId);
    const pack = await this.packageRepository.get(id, {
      select: PACKAGE_SELECT_FIELDS,
      relations: ["author"],
      relationSelects: { author: ["id", "username"] },
    });
    if (!pack) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }
    // TODO: Temp
    return pack;
  }

  public async listPackages(
    paginationOpts: PaginationOpts<Package>,
    selectOptions: SelectOptions<Package>
  ): Promise<PaginatedResult<any[]>> {
    // TODO: Temp any
    const paginatedList = await this.packageRepository.list(
      paginationOpts,
      selectOptions
    );

    // TODO: Temp
    const packageListItems = paginatedList.data.map((pack) => {
      return pack;
    });

    return {
      data: packageListItems,
      pageInfo: { ...paginatedList.pageInfo },
    };
  }

  public async uploadPackage(
    req: Request,
    packageData: PackageDTO,
    expiresIn: number = UPLOAD_PACKAGE_LINKS_EXPIRES_IN
  ): Promise<PackageUploadResponse> {
    const author = await this.userRepository.getUserByRequest(req, {
      select: USER_SELECT_FIELDS,
      relations: [],
    });

    if (!author || !author.id) {
      throw new ClientError(ClientResponse.PACKAGE_AUTHOR_NOT_FOUND);
    }

    const { pack, files } = await this.packageRepository.create(
      packageData,
      author
    );

    const links = await this.storage.generatePresignedUrls(files, expiresIn);
    return {
      id: pack.id,
      uploadLinks: links,
    };
  }
}
