import { ObjectLiteral, SelectQueryBuilder } from "typeorm";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";

export class PaginatedResults<T extends ObjectLiteral> {
  private queryBuilder: SelectQueryBuilder<T>;
  private options: IPaginationOpts<T>;

  constructor(
    queryBuilder: SelectQueryBuilder<T>,
    options: IPaginationOpts<T>
  ) {
    this.queryBuilder = queryBuilder;
    this.options = options;
  }

  // TODO
  // public async paginate(): Promise<PaginationResult<T>> {
  // const { after, before, limit = 10 } = this.options;
  // const hasAfter = !!after;
  // const hasBefore = !!before;

  // if (hasAfter) {
  //   this.queryBuilder.andWhere("id > :after", { after });
  // }

  // if (hasBefore) {
  //   this.queryBuilder.andWhere("id < :before", { before });
  // }

  // this.queryBuilder.orderBy("id", hasBefore ? "DESC" : "ASC");
  // this.queryBuilder.take(limit);

  // const items = await this.queryBuilder.getMany();
  // const hasMore = items.length > limit;

  // // Remove extra item if it exists
  // if (hasMore) {
  //   items.pop();
  // }

  // const hasNextPage = hasAfter || hasMore;
  // const hasPreviousPage = hasBefore || hasMore;
  // const startCursor = items.length > 0 ? String(items[0].id) : null;
  // const endCursor =
  //   items.length > 0 ? String(items[items.length - 1].id) : null;

  // return {
  //   data: items,
  //   pageInfo: {
  //     hasNextPage,
  //     hasPreviousPage,
  //     startCursor,
  //     endCursor,
  //   },
  // };
  // }
}
