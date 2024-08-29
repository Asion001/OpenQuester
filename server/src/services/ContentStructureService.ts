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
  public static async addLinksForFiles(
    content: OQContentStructure,
    storage: IStorage,
    bucket: string,
    expiresIn: number
  ): Promise<OQContentStructure> {
    // Validation
    if (!content?.rounds) return content;
    const roundsContent = ValueUtils.parseJSON(content.rounds);
    if (!ValueUtils.isArray(roundsContent)) return content;

    // Variables define
    const stack = roundsContent.slice();
    const promises: Promise<string>[] = [];
    const cache: Map<string, Promise<string>> = new Map();

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
              .upload(
                (current[key] as OQFileContentStructure).path,
                bucket,
                expiresIn
              )
              .then(
                (link: string) =>
                  // Assign link to file object
                  ((current[key] as OQFileContentStructure).link = link)
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

    // Update the original content object with the modified rounds content
    content.rounds = roundsContent;

    return content;
  }
}
