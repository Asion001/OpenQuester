import { User } from "database/models/User";
import { Package } from "database/models/Package";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { ISelectOptions } from "types/ISelectOptions";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { IPackageListItem } from "types/game/items/IPackageIListItem";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { IPackageUploadResponse } from "types/package/IPackageUploadResponse";
import { EFileSource } from "enums/file/EFileSource";
import { Session } from "types/auth/session";
import { IFile } from "types/file/IFile";

export interface IStorage {
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
    source: EFileSource,
    user?: User,
    pack?: Package
  ): Promise<string>;
  /**
   * @returns Record with `key:value` -> `filename:s3-file-upload-link`
   */
  performBulkFilesUpload(
    filesData: { files: IFile[]; user?: User; pack?: Package },
    expiresIn?: number
  ): Promise<Record<string, string>>;
  delete(filename: string, session: Session): Promise<void>;
  // TODO: Create separate service for packages
  getPackage(id: number): Promise<IPackageListItem>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    content: OQContentStructure,
    session: Session,
    expiresIn?: number
  ): Promise<IPackageUploadResponse>;
  listPackages(
    paginationOpts: IPaginationOpts<IPackage>,
    selectOptions?: ISelectOptions<IPackage>
  ): Promise<IPaginatedResult<IPackageListItem[]>>;
}
