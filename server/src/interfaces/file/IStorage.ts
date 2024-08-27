export interface IStorage {
  /** @returns presigned url */
  get(filename: string, bucket: string, expiresIn?: number): Promise<string>;
  /** @returns presigned url */
  upload(filename: string, bucket: string, expiresIn?: number): Promise<string>;
  /** @returns content object back, but with updated "file" entries, added links to them */
  uploadPackage(content: object, bucket: string): Promise<object>;
  delete(filename: string, bucket: string): Promise<void>;
}
