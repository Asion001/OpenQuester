export interface IStorage {
  /** @returns presigned url */
  get(filename: string, expiresIn?: number): Promise<string>;
  /** @returns presigned url */
  upload(filename: string, expiresIn?: number): Promise<string>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(content: object, expiresIn?: number): Promise<object>;
  delete(filename: string): Promise<void>;
}
