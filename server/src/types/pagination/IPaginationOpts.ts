export interface IPaginationOpts<T> {
  sortBy: keyof T;
  order: "asc" | "desc";
  limit: number;
  offset: number;
}
