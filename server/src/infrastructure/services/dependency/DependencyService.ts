import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { FileUsageRepository } from "infrastructure/database/repositories/FileUsageRepository";

export class DependencyService {
  constructor(
    private readonly fileRepository: FileRepository,
    private readonly fileUsageRepository: FileUsageRepository
  ) {
    //
  }

  /**
   * Return array of file usage
   */
  public async getFileUsage(filename: string) {
    const file = await this.fileRepository.getFileByFilename(filename);

    if (!file) {
      return [];
    }

    return this.fileUsageRepository.getUsage(file);
  }
}
