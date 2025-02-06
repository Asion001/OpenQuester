import { Package } from "database/models/Package";
import { ClientResponse } from "enums/ClientResponse";
import { EFileSource } from "enums/file/EFileSource";
import { ClientError } from "error/ClientError";
import { IStorage } from "types/file/IStorage";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { OQFileContentStructure } from "types/file/structures/OQFileContentStructure";
import { OQQuestionsStructure } from "types/file/structures/OQQuestionsStructure";
import { OQRoundStructure } from "types/file/structures/OQRoundStructure";
import { OQThemeStructure } from "types/file/structures/OQThemeStructure";

type TraversableObject =
  | OQContentStructure
  | OQRoundStructure
  | OQThemeStructure
  | OQQuestionsStructure
  | OQFileContentStructure;

/**
 * Class that manages all actions related to content.json file and it's structure
 */
export class ContentStructureService {
  private _storage!: IStorage;

  public async getUploadLinksForFiles(
    content: OQContentStructure,
    storage: IStorage,
    pack: Package,
    expiresIn: number
  ): Promise<{ [key: string]: string }> {
    if (!content?.rounds) {
      throw new ClientError(ClientResponse.NO_CONTENT_ROUNDS);
    }

    this._storage = storage;
    const fileLinks: Record<string, string> = {};
    const promises: Promise<void>[] = [];
    const stack: TraversableObject[] = [...content.rounds];

    while (stack.length > 0) {
      const current = stack.pop()!;

      if (this._hasFile(current)) {
        const filename = current.file.sha256;
        promises.push(
          this._storage
            .performFileUpload(
              filename,
              expiresIn,
              EFileSource.S3,
              undefined,
              pack
            )
            .then((link) => {
              fileLinks[filename] = link;
            })
        );
      } else if (typeof current === "object" && current !== null) {
        Object.values(current).forEach((value) => {
          if (typeof value === "object" && value !== null) {
            stack.push(value as TraversableObject);
          }
        });
      }
    }

    await Promise.all(promises);
    return fileLinks;
  }

  private _hasFile(obj: object): obj is { file: OQFileContentStructure } {
    return "file" in obj && typeof (obj as any).file?.sha256 === "string";
  }
}
