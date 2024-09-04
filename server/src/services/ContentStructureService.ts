import { ClientResponse } from "../enums/ClientResponse";
import { IStorage } from "../interfaces/file/IStorage";
import { OQContentStructure } from "../interfaces/file/structures/OQContentStructure";
import { OQFileStructure } from "../interfaces/file/structures/OQFileStructure";
import { OQQuestionsStructure } from "../interfaces/file/structures/OQQuestionsStructure";
import { OQRoundStructure } from "../interfaces/file/structures/OQRoundStructure";
import { OQThemeStructure } from "../interfaces/file/structures/OQThemeStructure";

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
    expiresIn: number
  ): Promise<{ [key: string]: string }> {
    if (!content?.rounds) {
      return { error: ClientResponse.NO_CONTENT_ROUNDS };
    }

    /** Nested objects stack */
    const stack: Array<
      OQRoundStructure | OQThemeStructure | OQQuestionsStructure
    > = [...content.rounds];
    /** Output object that contains upload links for each file in stack */
    const fileLinks: { [key: string]: string } = {};
    /** Map used for caching */
    const cache: Map<string, Promise<string>> = new Map();
    /** Promises array that collects promises with file upload */
    const promises: Promise<void>[] = [];

    // Iterate through each object in the content to find "file" entries
    while (stack.length > 0) {
      const current = stack.shift();

      if (this._hasFile(current)) {
        const filePath = current.file.path;

        if (filePath) {
          let uploadPromise: Promise<string>;

          // Check if the path is already cached
          if (cache.has(filePath)) {
            uploadPromise = cache.get(filePath)!;
          } else {
            // Create and cache the upload promise
            uploadPromise = storage.upload(filePath, expiresIn).then((link) => {
              fileLinks[filePath] = link;
              return link;
            });
            cache.set(filePath, uploadPromise);
          }

          // Push the upload promise to the array
          promises.push(uploadPromise.then(() => {}));
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
  private _hasFile(obj: any): obj is OQFileStructure {
    return (
      obj && typeof obj.file === "object" && typeof obj.file.path === "string"
    );
  }
}
