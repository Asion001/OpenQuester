import { User } from "database/models/User";
import { Package } from "database/models/Package";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { ISelectOptions } from "types/ISelectOptions";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { IPackageListItem } from "types/game/items/IPackageIListItem";
import { IncomingHttpHeaders } from "http";
import { OQContentStructure } from "./structures/OQContentStructure";
import { IPackageUploadResponse } from "types/package/IPackageUploadResponse";

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
    user?: User,
    pack?: Package
  ): Promise<string>;
  delete(filename: string, headers: IncomingHttpHeaders): Promise<void>;
  // TODO: Create separate service for packages
  getPackage(id: number): Promise<IPackageListItem>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    content: OQContentStructure,
    headers: IncomingHttpHeaders,
    expiresIn?: number
  ): Promise<IPackageUploadResponse>;
  listPackages(
    paginationOpts: IPaginationOpts<IPackage>,
    selectOptions?: ISelectOptions<IPackage>
  ): Promise<IPaginatedResult<IPackageListItem[]>>;
}
