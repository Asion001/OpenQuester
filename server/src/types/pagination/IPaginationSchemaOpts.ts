import { IPaginationOpts } from "./IPaginationOpts";

export interface IPaginationSchemaOpts<T> {
  data: IPaginationOpts<T>;
  possibleSortByFields: (keyof T)[];
}
