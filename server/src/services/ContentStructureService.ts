import { ClientResponse } from "../enums/ClientResponse";
import { ClientError } from "../error/ClientError";
import { IStorage } from "../interfaces/file/IStorage";
import { OQContentStructure } from "../interfaces/file/structures/OQContentStructure";

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
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

    /** Nested objects stack */
    const stack: Array<any> = [...content.rounds];
    /** Output object that contains upload links for each file in stack */
    const fileLinks: { [key: string]: string } = {};
    /** Map used for caching */
    const cache: Map<string, Promise<string>> = new Map();
    /** Promises array that collects promises with file upload */
    const promises: Promise<string>[] = [];

    // Iterate through each object in the content to find "file" entries
    while (stack.length > 0) {
      const current = stack.shift();

      if (current && this._hasFile(current)) {
        const filename = current.file.sha256;

        if (filename) {
          let uploadPromise: Promise<string>;

          // Check if the path is already cached
          if (cache.has(filename)) {
            uploadPromise = cache.get(filename)!;
          } else {
            // Create and cache the upload promise
            uploadPromise = storage.upload(filename, expiresIn).then((link) => {
              fileLinks[filename] = link;
              return link;
            });
            cache.set(filename, uploadPromise);
          }

          // Push the upload promise to the array
          promises.push(uploadPromise);
        }
      } else {
        // Push nested objects into the stack for further processing
        for (const key in current) {
          const value = current[key as keyof typeof current];
          if (typeof value === "object" && value !== null) {
            stack.push(value);
          }
        }
      }
    }

    // Wait for all upload promises to complete
    await Promise.all(promises);

    cache.clear();
    return fileLinks;
  }

  /** Check if current object of stack has correct and non-empty file field */
  private _hasFile(obj: any) {
    return (
      obj && typeof obj.file === "object" && typeof obj.file.sha256 === "string"
    );
  }
}
