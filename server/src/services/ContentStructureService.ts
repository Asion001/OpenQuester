import { Package } from "database/models/Package";
import { ClientResponse } from "enums/ClientResponse";
import { ClientError } from "error/ClientError";
import { IStorage } from "types/file/IStorage";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { ValueUtils } from "utils/ValueUtils";

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
  private _fileLinks: { [key: string]: string };
  private _promises: Array<Promise<string>>;
  private _stack: Set<any>;
  private _storage!: IStorage;

  constructor() {
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
          const uploadPromise = this._uploadPromise(filename, expiresIn, pack);
          this._promises.push(uploadPromise);
        }
      } else {
        this._updateStack(current);
      }
    }

    await Promise.all(this._promises);
    this._promises.length = 0;

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

  /** Check if current object of stack has correct and non-empty file field */
  private _hasFile(obj: any) {
    return (
      obj && typeof obj.file === "object" && typeof obj.file.sha256 === "string"
    );
  }
}
