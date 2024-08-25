export interface IStorage {
  /** @returns presigned url */
  get(filename: string, bucket: string, expiresIn?: number): Promise<string>;
  /** @returns presigned url */
  upload(filename: string, bucket: string, expiresIn?: number): Promise<string>;
  /** @returns presigned url */
  delete(filename: string, bucket: string, expiresIn: number): Promise<string>;
}
