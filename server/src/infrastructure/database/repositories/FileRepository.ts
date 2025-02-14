import { FileSource } from "domain/enums/file/FileSource";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { File } from "infrastructure/database/models/File";
import { type Repository } from "typeorm";

export class FileRepository {
  constructor(private readonly repository: Repository<File>) {
    //
  }

  public async bulkWriteFiles(files: FileDTO[]) {
    return this.repository.insert(files);
  }

  public async writeFile(path: string, filename: string, source: FileSource) {
    const existingFile = await this.repository.findOne({
      where: {
        filename,
        path,
        source,
      },
    });
    if (existingFile) {
      return existingFile;
    }

    const file = new File();
    file.import({
      path,
      filename,
      source,
      created_at: new Date(),
    });

    return this.repository.save(file);
  }

  public async getFile(id: number) {
    return this.repository.findOne({
      where: { id },
    });
  }

  public async getFileByFilename(filename: string) {
    return this.repository.findOne({
      where: { filename },
    });
  }

  /**
   * Remove file record from DB if it exists
   */
  public async removeFile(filename: string) {
    const file = await this.getFileByFilename(filename);
    if (file?.id && file.id > 0) {
      return this.repository.remove(file);
    }
  }
}
