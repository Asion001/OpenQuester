import { Package } from "database/models/Package";
import { ClientResponse } from "enums/ClientResponse";
import { EFileSource } from "enums/file/EFileSource";
import { ClientError } from "error/ClientError";
import { IFile } from "types/file/IFile";
import { IStorage } from "types/file/IStorage";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { OQFileContentStructure } from "types/file/structures/OQFileContentStructure";
import { OQQuestionsStructure } from "types/file/structures/OQQuestionsStructure";
import { OQRoundStructure } from "types/file/structures/OQRoundStructure";
import { OQThemeStructure } from "types/file/structures/OQThemeStructure";
import { StorageUtils } from "utils/StorageUtils";

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
    const stack: TraversableObject[] = [...content.rounds];
    const filesToUpload: IFile[] = [];

    while (stack.length > 0) {
      const current = stack.pop()!;

      if (this._hasFile(current)) {
        const filename = current.file.sha256;

        filesToUpload.push({
          filename,
          created_at: new Date(),
          path: StorageUtils.getFilePath(filename),
          source: EFileSource.S3,
        });
      } else if (typeof current === "object" && current !== null) {
        Object.values(current).forEach((value) => {
          if (typeof value === "object" && value !== null) {
            stack.push(value as TraversableObject);
          }
        });
      }
    }

    return await this._storage.performBulkFilesUpload(
      {
        files: filesToUpload,
        pack,
      },
      expiresIn
    );
  }

  private _hasFile(obj: object): obj is { file: OQFileContentStructure } {
    return "file" in obj && typeof (obj as any).file?.sha256 === "string";
  }
}
