import { PaginationOpts } from "domain/types/pagination/PaginationOpts";

export interface PaginationSchemaOpts<T> {
  data: PaginationOpts<T>;
  possibleSortByFields: (keyof T)[];
}
