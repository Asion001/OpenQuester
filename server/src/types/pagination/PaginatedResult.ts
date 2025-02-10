export interface PaginatedResult<T> {
  data: T;
  pageInfo: {
    total: number;
  };
}
