import { Package } from "database/models/Package";
import { User } from "database/models/User";
import { FileSource } from "enums/file/FileSource";
import { Session } from "types/auth/session";
import { FileDTO } from "types/dto/file/FileDTO";
import { PackageListItemDTO } from "types/dto/game/items/PackageIListItemDTO";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { PackageModel } from "types/package/PackageModel";
import { PackageUploadResponse } from "types/package/PackageUploadResponse";
import { PaginatedResult } from "types/pagination/PaginatedResult";
import { PaginationOpts } from "types/pagination/PaginationOpts";
import { SelectOptions } from "types/SelectOptions";

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
  delete(filename: string, session: Session): Promise<void>;
  // TODO: Create separate service for packages
  getPackage(id: number): Promise<PackageListItemDTO>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    content: OQContentStructure,
    session: Session,
    expiresIn?: number
  ): Promise<PackageUploadResponse>;
  listPackages(
    paginationOpts: PaginationOpts<PackageModel>,
    selectOptions?: SelectOptions<PackageModel>
  ): Promise<PaginatedResult<PackageListItemDTO[]>>;
}
