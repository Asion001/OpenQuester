import { ObjectLiteral, SelectQueryBuilder } from "typeorm";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import {
  EPaginationOrder,
  IPaginationOpts,
} from "types/pagination/IPaginationOpts";

export class PaginatedResults {
  static async paginateEntityAndSelect<T extends ObjectLiteral>(
    qb: SelectQueryBuilder<T>,
    options: IPaginationOpts<T>
  ): Promise<IPaginatedResult<T[]>> {
    // Apply sorting
    const { order = EPaginationOrder.ASC, sortBy = "created_at" } = options;

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
      pageInfo: { total, totalOnPage: data.length },
    };
  }
}
