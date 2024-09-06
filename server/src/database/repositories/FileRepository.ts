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
}
