export enum PaginationOrder {
  ASC = "asc",
  DESC = "desc",
}

export interface PaginationOptsBase<T> {
  sortBy: keyof T;
  order: PaginationOrder;
  limit: number;
  offset: number;
}
