export interface IPaginatedResult<T> {
  data: T;
  pageInfo: {
    total: number;
  };
}
