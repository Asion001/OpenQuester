import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";
import { IStorage } from "../interfaces/file/IStorage";
import { OQContentStructure } from "../interfaces/file/structures/OQContentStructure";
import { Logger } from "../utils/Logger";
import { ValueUtils } from "../utils/ValueUtils";

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
  /** Map used for caching */
  private _cache: Map<string, Promise<string>> = new Map();

  /** Output object that contains upload links for each file in stack */
  private _fileLinks: { [key: string]: string } = {};

  /** Promises array that collects promises with file upload */
  private _promises: Promise<string>[] = [];

  /** Nested objects stack */
  private _stack: Array<any> = [];

  /**
   * Parse content.json file and update all "file" entries with download link
   */
  public async getUploadLinksForFiles(
    content: OQContentStructure,
    storage: IStorage,
    expiresIn?: number
  ): Promise<{ [key: string]: string }> {
    if (!content?.rounds) {
      throw new ClientError(ClientResponse.NO_CONTENT_ROUNDS);
    }

    if (!ValueUtils.isEmpty(this._fileLinks)) {
      this._fileLinks = {};
    }

    this._stack = [...content.rounds];

    // Iterate through each object in the content to find "file" entries
    while (this._stack.length > 0) {
      const current = this._stack.shift();

      if (current && this._hasFile(current)) {
        const filename = current.file.sha256;

        if (filename) {
          let uploadPromise: Promise<string>;

          // Check if the path is already cached
          if (this._cache.has(filename)) {
            uploadPromise = this._cache.get(filename)!;
          } else {
            // Create and cache the upload promise
            uploadPromise = storage.upload(filename, expiresIn).then((link) => {
              this._fileLinks[filename] = link;
              return link;
            });
            this._cache.set(filename, uploadPromise);
          }

          // Push the upload promise to the array
          this._promises.push(uploadPromise);
        }
      } else {
        // Push nested objects into the stack for further processing
        for (const key in current) {
          const value = current[key as keyof typeof current];
          if (typeof value === "object" && value !== null) {
            this._stack.push(value);
          }
        }
      }
    }

    // Wait for all upload promises to complete
    await Promise.all(this._promises);
    this._promises = [];

    Logger.gray(
      // One entry is ~75 bytes. This could be removed later
      `Current package cache size: ~${(this._cache.size * 75) / 1000} KB`
    );
    return this._fileLinks;
  }

  /** Check if current object of stack has correct and non-empty file field */
  private _hasFile(obj: any) {
    return (
      obj && typeof obj.file === "object" && typeof obj.file.sha256 === "string"
    );
  }
}
