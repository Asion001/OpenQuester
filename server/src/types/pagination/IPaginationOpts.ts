export enum EPaginationOrder {
  ASC = "asc",
  DESC = "desc",
}

export interface IPaginationOpts<T> {
  sortBy: keyof T;
  order: EPaginationOrder;
  limit: number;
  offset: number;
}
