import { ObjectLiteral, SelectQueryBuilder } from "typeorm";
import { PaginatedResult } from "types/pagination/PaginatedResult";
import {
  PaginationOpts,
  PaginationOrder,
} from "types/pagination/PaginationOpts";

export class PaginatedResults {
  static async paginateEntityAndSelect<T extends ObjectLiteral>(
    qb: SelectQueryBuilder<T>,
    options: PaginationOpts<T>
  ): Promise<PaginatedResult<T[]>> {
    // Apply sorting
    const { order = PaginationOrder.ASC, sortBy = "created_at" } = options;

    qb.orderBy(
      `${qb.alias}.${String(sortBy)}`,
      order.toUpperCase() as "ASC" | "DESC"
    );

    // Apply pagination
    qb.skip(options.offset);
    qb.take(options.limit);

    // Execute query
    const [data, total] = await qb.getManyAndCount();

    return {
      data,
      pageInfo: { total },
    };
  }
}
