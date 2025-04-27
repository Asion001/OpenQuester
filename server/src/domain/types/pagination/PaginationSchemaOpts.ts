import { PaginationOptsBase } from "domain/types/pagination/PaginationOpts";

export interface PaginationSchemaOpts<T> {
  data: PaginationOptsBase<T>;
  possibleSortByFields: (keyof T)[];
}
