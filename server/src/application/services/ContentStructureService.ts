import { ClientResponse } from "domain/enums/ClientResponse";
import { FileSource } from "domain/enums/file/FileSource";
import { ClientError } from "domain/errors/ClientError";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { StorageServiceModel } from "domain/types/file/StorageServiceModel";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { OQFileContentStructure } from "domain/types/file/structures/OQFileContentStructure";
import { OQQuestionsStructure } from "domain/types/file/structures/OQQuestionsStructure";
import { OQRoundStructure } from "domain/types/file/structures/OQRoundStructure";
import { OQThemeStructure } from "domain/types/file/structures/OQThemeStructure";
import { Package } from "infrastructure/database/models/Package";
import { StorageUtils } from "infrastructure/utils/StorageUtils";

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
  private _storage!: StorageServiceModel;

  public async getUploadLinksForFiles(
    content: OQContentStructure,
    storage: StorageServiceModel,
    pack: Package,
    expiresIn: number
  ): Promise<Record<string, string>> {
    if (!content?.rounds) {
      throw new ClientError(ClientResponse.NO_CONTENT_ROUNDS);
    }

    this._storage = storage;
    const stack: TraversableObject[] = [...content.rounds];
    const filesToUpload: FileDTO[] = [];

    while (stack.length > 0) {
      const current = stack.pop()!;

      if (this._hasFile(current)) {
        const filename = current.file.sha256;

        filesToUpload.push({
          filename,
          created_at: new Date(),
          path: StorageUtils.getFilePath(filename),
          source: FileSource.S3,
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
