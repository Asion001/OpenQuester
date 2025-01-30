import { Request } from "express";

import { User } from "database/models/User";
import { Package } from "database/models/Package";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { ISelectOptions } from "types/ISelectOptions";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { IPackageListItem } from "types/game/items/IPackageIListItem";

export interface IStorage {
  /** @returns presigned url */
  get(filename: string, expiresIn?: number): Promise<string>;
  /**
   * Upload file using request object
   *
   * @returns presigned url
   */
  upload(req: Request, expiresIn?: number): Promise<string>;
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
  delete(req: Request): Promise<void>;
  // TODO: Create separate service for packages
  getPackage(id: number): Promise<IPackageListItem>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    req: Request,
    expiresIn?: number
  ): Promise<{ [key: string]: string }>;
  listPackages(
    paginationOpts: IPaginationOpts<IPackage>,
    selectOptions?: ISelectOptions<IPackage>
  ): Promise<IPaginatedResult<IPackageListItem[]>>;
}
