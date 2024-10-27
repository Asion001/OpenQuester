import { type Repository } from "typeorm";
import { type Database } from "../Database";
import { File } from "../models/File";

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

  public async writeFile(filename: string, path: string) {
    const fileExists = await this._repository.exists({
      where: {
        filename,
        path,
      },
    });
    if (fileExists) {
      return;
    }

    const file = new File();
    file.import({
      path,
      filename,
      created_at: new Date(),
    });

    this._repository.save(file);
  }

  public async getFileByFilename(filename: string) {
    return this._repository.findOne({
      where: { filename },
    });
  }
}
