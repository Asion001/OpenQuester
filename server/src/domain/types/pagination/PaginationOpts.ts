export enum PaginationOrder {
  ASC = "asc",
  DESC = "desc",
}

export interface PaginationOpts<T> {
  sortBy: keyof T;
  order: PaginationOrder;
  limit: number;
  offset: number;
}
