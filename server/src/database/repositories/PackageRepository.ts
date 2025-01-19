import { Repository } from "typeorm";
import { Package } from "../models/Package";
import { Database } from "../Database";
import { OQContentStructure } from "../../interfaces/file/structures/OQContentStructure";
import { ClientError } from "../../error/ClientError";
import { ClientResponse } from "../../enums/ClientResponse";
import { User } from "../models/User";

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

  public async exists(content: OQContentStructure) {
    const existingPack = await this._getIfExists(content);
    if (existingPack) {
      return existingPack;
    }
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

  private async _getIfExists(content: OQContentStructure) {
    const pack = await this._repository
      .createQueryBuilder("package")
      .where("content -> 'metadata' ->> 'id' = :id", {
        id: content.metadata?.id,
      })
      .limit(1)
      .getOne();

    return pack ?? null;
  }
}
