import { In, Repository } from "typeorm";

import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { type Database } from "infrastructure/database/Database";
import { Package } from "infrastructure/database/models/Package";
import { type User } from "infrastructure/database/models/User";
import { PaginatedResults } from "infrastructure/database/pagination/PaginatedResults";
import { QueryBuilder } from "infrastructure/database/QueryBuilder";

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

  public async get(id: number, selectOptions: SelectOptions<Package>) {
    const qb = await QueryBuilder.buildFindQuery<Package>(
      this._repository,
      { id },
      selectOptions
    );

    return qb.getOne();
  }

  public async list(
    paginationOpts: PaginationOpts<Package>,
    selectOptions: SelectOptions<Package>
  ): Promise<PaginatedResult<Package[]>> {
    const alias = this._repository.metadata.name.toLowerCase();

    let qb = this._repository
      .createQueryBuilder(alias)
      .select(selectOptions.select.map((field) => `${alias}.${field}`));

    qb = await QueryBuilder.buildRelationsSelect(
      qb,
      selectOptions.relations,
      selectOptions.relationSelects
    );

    return PaginatedResults.paginateEntityAndSelect<Package>(
      qb,
      paginationOpts
    );
  }

  public findByIds(
    ids: number[],
    selectOptions: SelectOptions<Package>
  ): Promise<Package[]> {
    return this._repository.find({
      where: { id: In(ids) },
      relations: selectOptions.relations,
    });
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
