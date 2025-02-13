import { type Database } from "database/Database";
import { File } from "database/models/File";
import { FileSource } from "enums/file/FileSource";
import { type Repository } from "typeorm";
import { FileDTO } from "types/dto/file/FileDTO";

export class FileRepository {
  private static _instance: FileRepository;
  private _repository: Repository<File>;

  private constructor(db: Database) {
    this._repository = db.getRepository(File);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new FileRepository(db);
    }

    return this._instance;
  }

  public async bulkWriteFiles(files: FileDTO[]) {
    return this._repository.insert(files);
  }

  public async writeFile(path: string, filename: string, source: FileSource) {
    const existingFile = await this._repository.findOne({
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

    return this._repository.save(file);
  }

  public async getFile(id: number) {
    return this._repository.findOne({
      where: { id },
    });
  }

  public async getFileByFilename(filename: string) {
    return this._repository.findOne({
      where: { filename },
    });
  }

  /**
   * Remove file record from DB if it exists
   */
  public async removeFile(filename: string) {
    const file = await this.getFileByFilename(filename);
    if (file?.id && file.id > 0) {
      return this._repository.remove(file);
    }
  }
}
