import { ObjectLiteral, SelectQueryBuilder } from "typeorm";

import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import { PaginationOptsBase } from "domain/types/pagination/PaginationOpts";

export class PaginatedResults {
  static async paginateEntityAndSelect<T extends ObjectLiteral>(
    qb: SelectQueryBuilder<T>,
    options: PaginationOptsBase<T>
  ): Promise<PaginatedResult<T[]>> {
    // Apply pagination
    qb.skip(options.offset);
    qb.limit(options.limit);

    // Execute query
    const [data, total] = await qb.getManyAndCount();

    return {
      data,
      pageInfo: { total },
    };
  }
}
