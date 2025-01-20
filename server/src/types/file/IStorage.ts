import { Request } from "express";

import { User } from "database/models/User";
import { Package } from "database/models/Package";

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
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    req: Request,
    expiresIn?: number
  ): Promise<{ [key: string]: string }>;
  delete(req: Request): Promise<void>;
}
