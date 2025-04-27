import { FileService } from "application/services/file/FileService";
import { FileUsageService } from "application/services/file/FileUsageService";

export class DependencyService {
  constructor(
    private readonly fileService: FileService,
    private readonly fileUsageService: FileUsageService
  ) {
    //
  }

  /**
   * Return array of file usage
   */
  public async getFileUsage(filename: string) {
    const file = await this.fileService.getFileByFilename(filename);

    if (!file) {
      return [];
    }

    return this.fileUsageService.getUsage(file);
  }
}
