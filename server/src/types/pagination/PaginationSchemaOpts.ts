import { PaginationOpts } from "types/pagination/PaginationOpts";

export interface PaginationSchemaOpts<T> {
  data: PaginationOpts<T>;
  possibleSortByFields: (keyof T)[];
}
