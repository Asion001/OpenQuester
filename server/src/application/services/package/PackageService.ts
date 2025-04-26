import { type Request } from "express";

import { PACKAGE_SELECT_RELATIONS } from "domain/constants/package";
import { UPLOAD_PACKAGE_LINKS_EXPIRES_IN } from "domain/constants/storage";
import { USER_SELECT_FIELDS } from "domain/constants/user";
import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PackageResponseDTO } from "domain/types/dto/package/response/PackageResponseDTO";
import { PackageUploadResponse } from "domain/types/package/PackageUploadResponse";
import { PackagePaginationOpts } from "domain/types/pagination/package/PackagePaginationOpts";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PackageRepository } from "infrastructure/database/repositories/PackageRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";
import { ValueUtils } from "infrastructure/utils/ValueUtils";

export class PackageService {
  constructor(
    private readonly packageRepository: PackageRepository,
    private readonly userRepository: UserRepository,
    private readonly storage: S3StorageService
  ) {
    //
  }

  public async getPackage(
    packId: string | number
  ): Promise<PackageResponseDTO> {
    const id = ValueUtils.validateId(packId);
    const pack = await this.packageRepository.get(
      id,
      undefined,
      PACKAGE_SELECT_RELATIONS
    );

    if (!pack) {
      throw new ClientError(ClientResponse.PACKAGE_NOT_FOUND);
    }

    return pack.toDTO(this.storage);
  }

  public async listPackages(
    paginationOpts: PackagePaginationOpts
  ): Promise<PaginatedResult<PackageResponseDTO[]>> {
    const paginatedList = await this.packageRepository.list(paginationOpts);

    const packageListItems = await Promise.all(
      paginatedList.data.map(async (pack) => {
        return await pack.toDTO(this.storage);
      })
    );

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
