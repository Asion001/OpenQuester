import { type Request } from "express";

import { FileSource } from "domain/enums/file/FileSource";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { PackageListItemDTO } from "domain/types/dto/game/items/PackageIListItemDTO";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PackageUploadResponse } from "domain/types/package/PackageUploadResponse";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { type Package } from "infrastructure/database/models/Package";
import { type User } from "infrastructure/database/models/User";

export interface StorageServiceModel {
  /** @returns presigned url */
  get(filename: string, expiresIn?: number): Promise<string>;
  /**
   * Upload file using request object
   *
   * @returns presigned url
   */
  upload(filename: string, expiresIn?: number): Promise<string>;
  /**
   * Performs file upload directly by filename and user or package objects
   * @returns presigned url
   */
  performFileUpload(
    filename: string,
    expiresIn: number,
    source: FileSource,
    user?: User,
    pack?: Package
  ): Promise<string>;
  /**
   * @returns Record with `key:value` -> `filename:s3-file-upload-link`
   */
  performBulkFilesUpload(
    filesData: { files: FileDTO[]; user?: User; pack?: Package },
    expiresIn?: number
  ): Promise<Record<string, string>>;
  delete(filename: string, req: Request): Promise<void>;
  // TODO: Create separate service for packages
  getPackage(id: number): Promise<PackageListItemDTO>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    req: Request,
    content: OQContentStructure,
    expiresIn?: number
  ): Promise<PackageUploadResponse>;
  listPackages(
    paginationOpts: PaginationOpts<Package>,
    selectOptions: SelectOptions<Package>
  ): Promise<PaginatedResult<PackageListItemDTO[]>>;
}
