import { type Repository } from "typeorm";
import { type Database } from "database/Database";
import { File } from "database/models/File";
import { EFileSource } from "enums/file/EFileSource";

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

  public async writeFile(path: string, filename: string, source: EFileSource) {
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
