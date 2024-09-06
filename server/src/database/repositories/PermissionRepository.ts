import { Repository } from "typeorm";
import { Database } from "../Database";
import { Permission } from "../models/Permission";
import { EUserPermissions } from "../../enums/EUserPermissions";

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

  /**
   * Return default permissions for user
   */
  public async default() {
    return this._repository
      .createQueryBuilder("permission")
      .where("id=:id", { id: EUserPermissions.user })
      .getOne();
  }
}
