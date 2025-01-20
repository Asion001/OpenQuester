import { Package } from "database/models/Package";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";
import { IStorage } from "interfaces/file/IStorage";
import { OQContentStructure } from "interfaces/file/structures/OQContentStructure";
import { Logger } from "utils/Logger";
import { ValueUtils } from "utils/ValueUtils";

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
  private readonly CACHE_ENTRY_SIZE = 75; // bytes

  private _cache: Map<string, Promise<string>>;
  private _fileLinks: { [key: string]: string };
  private _promises: Array<Promise<string>>;
  private _stack: Set<any>;
  private _storage!: IStorage;

  constructor() {
    this._cache = new Map();
    this._promises = [];
    this._fileLinks = {};
    this._stack = new Set();
  }

  /**
   * Parse content.json file and update all "file" entries with download link
   */
  public async getUploadLinksForFiles(
    content: OQContentStructure,
    storage: IStorage,
    pack: Package,
    expiresIn: number
  ): Promise<{ [key: string]: string }> {
    if (!content?.rounds) {
      throw new ClientError(ClientResponse.NO_CONTENT_ROUNDS);
    }

    if (!ValueUtils.isEmpty(this._fileLinks)) {
      this._fileLinks = {};
    }

    this._storage = storage;
    this._stack = new Set(content.rounds);
    this._promises = [];

    // Iterate through each object in the content to find "file" entries
    while (this._stack.size > 0) {
      const current = this._stack.values().next().value;
      this._stack.delete(current);

      if (current && this._hasFile(current)) {
        const filename = current.file.sha256;

        if (filename) {
          let uploadPromise: Promise<string>;

          // Check if the path is already cached
          if (this._cache.has(filename)) {
            uploadPromise = this._cache.get(filename)!;
          } else {
            // Create and cache the upload promise
            uploadPromise = this._uploadPromise(filename, expiresIn, pack);
            this._cache.set(filename, uploadPromise);
          }

          // Push the upload promise to the array
          this._promises.push(uploadPromise);
        }
      } else {
        this._updateStack(current);
      }
    }

    // Wait for all upload promises to complete
    await Promise.all(this._promises);
    this._promises.length = 0;

    this._logCacheSize();
    return this._fileLinks;
  }

  private _updateStack(current: any) {
    // Push nested objects into the stack for further processing
    for (const key in current) {
      const value = current[key as keyof typeof current];
      if (typeof value === "object" && value !== null) {
        this._stack.add(value);
      }
    }
  }

  private _uploadPromise(filename: string, expiresIn: number, pack: Package) {
    return this._storage
      .performFileUpload(filename, expiresIn, undefined, pack)
      .then((link) => {
        this._fileLinks[filename] = link;
        return link;
      });
  }

  private _logCacheSize() {
    return Logger.gray(
      // This could be removed later
      `Current package cache size: ~${
        (this._cache.size * this.CACHE_ENTRY_SIZE) / 1000
      } KB`
    );
  }

  /** Check if current object of stack has correct and non-empty file field */
  private _hasFile(obj: any) {
    return (
      obj && typeof obj.file === "object" && typeof obj.file.sha256 === "string"
    );
  }
}
