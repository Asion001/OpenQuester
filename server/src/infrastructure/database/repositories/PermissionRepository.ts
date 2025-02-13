import { type Repository } from "typeorm";

import { type Database } from "infrastructure/database/Database";
import { Permission } from "infrastructure/database/models/Permission";

export class PermissionRepository {
  private static _instance: PermissionRepository;
  private _repository: Repository<Permission>;

  private constructor(db: Database) {
    this._repository = db.getRepository(Permission);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new PermissionRepository(db);
    }

    return this._instance;
  }
}
