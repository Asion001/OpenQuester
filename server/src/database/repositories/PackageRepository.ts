import { Repository } from "typeorm";
import { Package } from "database/models/Package";
import { Database } from "database/Database";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { User } from "database/models/User";

export class PackageRepository {
  private static _instance: PackageRepository;
  private _repository: Repository<Package>;

  private constructor(db: Database) {
    this._repository = db.getRepository(Package);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new PackageRepository(db);
    }

    return this._instance;
  }

  public async get(id: number) {
    return this._repository.findOne({ where: { id } });
  }

  public async create(content: OQContentStructure, author: User) {
    const pack = new Package();
    pack.import({
      content,
      author: author,
      title: content.metadata?.title,
      created_at: new Date(),
    });

    if (!pack.content) {
      throw new ClientError(ClientResponse.CANNOT_SAVE_CONTENT);
    }

    return this._repository.save(pack);
  }
}
