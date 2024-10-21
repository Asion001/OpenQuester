import { User } from "../../database/models/User";
import { Language } from "../../types/text/translation";
import { OQContentStructure } from "./structures/OQContentStructure";

export interface IStorage {
  /** @returns presigned url */
  get(filename: string, expiresIn?: number): Promise<string>;
  /** @returns presigned url */
  upload(filename: string, expiresIn?: number): Promise<string>;
  /** @returns object with filename as key and link to upload as value */
  uploadPackage(
    content: OQContentStructure,
    author: User,
    expiresIn?: number,
    userLang?: Language
  ): Promise<{ [key: string]: string }>;
  delete(filename: string): Promise<void>;
}
