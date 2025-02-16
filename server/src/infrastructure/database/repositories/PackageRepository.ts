import { In, Repository } from "typeorm";

import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOpts } from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { Package } from "infrastructure/database/models/Package";
import { type User } from "infrastructure/database/models/User";
import { PaginatedResults } from "infrastructure/database/pagination/PaginatedResults";
import { QueryBuilder } from "infrastructure/database/QueryBuilder";

export class PackageRepository {
  constructor(private readonly repository: Repository<Package>) {
    //
  }

  public async get(id: number, selectOptions: SelectOptions<Package>) {
    const qb = await QueryBuilder.buildFindQuery<Package>(
      this.repository,
      { id },
      selectOptions
    );

    return qb.getOne();
  }

  public async list(
    paginationOpts: PaginationOpts<Package>,
    selectOptions: SelectOptions<Package>
  ): Promise<PaginatedResult<Package[]>> {
    const alias = this.repository.metadata.name.toLowerCase();

    let qb = this.repository
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
    return this.repository.find({
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

    return this.repository.save(pack);
  }
}
