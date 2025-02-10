import { type Repository } from "typeorm";

import { type Database } from "database/Database";
import { Permission } from "database/models/Permission";

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
