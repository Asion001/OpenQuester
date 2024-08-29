import { IStorage } from "../interfaces/file/IStorage";
import { OQContentStructure } from "../interfaces/file/structures/OQContentStructure";
import { OQFileContentStructure } from "../interfaces/file/structures/OQFileContentStructure";
import { ValueUtils } from "../utils/ValueUtils";

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
  /**
   * Parse content.json file and update all "file" entries with download link
   */
  public static async getUploadLinksForFiles(
    content: OQContentStructure,
    storage: IStorage,
    expiresIn: number
  ): Promise<{ [key: string]: string }> {
    if (!content?.rounds) {
      return { error: 'Content does not contain "rounds"!' };
    }

    const roundsContent = ValueUtils.parseJSON(content.rounds);

    if (!ValueUtils.isArray(roundsContent)) {
      return { error: '"rounds" is empty!' };
    }

    // Variables define
    const stack = roundsContent.slice();
    const promises: Promise<string>[] = [];
    const cache: Map<string, Promise<string>> = new Map();
    const fileLinks: { [key: string]: string } = {};

    // Iterate trough every object in content and find all "file" entries
    while (stack.length) {
      // Pop current object from stack
      const current = stack.pop();

      for (const key in current) {
        if (key === "file" && current[key]?.path) {
          let promise: Promise<string>;

          // Get promise from cache
          if (cache.get(current[key].path)) {
            promise = cache.get(current[key].path) as Promise<string>;
          } else {
            // Create promise for file upload link
            promise = storage
              .upload((current[key] as OQFileContentStructure).path, expiresIn)
              .then(
                (link: string) =>
                  // Assign link to file name
                  (fileLinks[(current[key] as OQFileContentStructure).path] =
                    link)
              );

            cache.set(current[key].path, promise);
          }
          // Push created promise to array
          promises.push(promise);
        } else if (typeof current[key] === "object" && current[key] !== null) {
          // It current[key] is object, push it to stack to iterate trough it
          stack.push(current[key]);
        }
      }
    }

    // Wait for all uploads to complete
    await Promise.all(promises);
    cache.clear();

    return fileLinks;
  }
}
