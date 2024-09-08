import { Repository } from "typeorm";
import { ErrorModel } from "../models/ErrorModel";
import { Database } from "../Database";

export class ErrorRepository {
  private static _instance: ErrorRepository;
  private _repository: Repository<ErrorModel>;

  private constructor(db: Database) {
    this._repository = db.getRepository(ErrorModel);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new ErrorRepository(db);
    }

    return this._instance;
  }

  public async writeError(message: string) {
    const error = new ErrorModel();

    error.import({
      message,
      created_at: new Date(),
    });

    this._repository.save(error);
  }
}
