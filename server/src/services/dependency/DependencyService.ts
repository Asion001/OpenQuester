import { Database } from "database/Database";
import { FileRepository } from "database/repositories/FileRepository";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";

export class DependencyService {
  private static _fileRepository: FileRepository;
  private static _fileUsageRepository: FileUsageRepository;

  private static fileRepository(db: Database) {
    if (!this._fileRepository) {
      this._fileRepository = FileRepository.getRepository(db);
    }
    return this._fileRepository;
  }

  private static fileUsageRepository(db: Database) {
    if (!this._fileUsageRepository) {
      this._fileUsageRepository = FileUsageRepository.getRepository(db);
    }
    return this._fileUsageRepository;
  }

  /**
   * Return array of
   */
  public static async getFileUsage(db: Database, filename: string) {
    const fileRepo = this.fileRepository(db);
    const fileUsageRepo = this.fileUsageRepository(db);

    const file = await fileRepo.getFileByFilename(filename);

    if (!file) {
      return [];
    }

    return fileUsageRepo.getUsage(file);
  }
}
