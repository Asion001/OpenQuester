export interface IPaginationResult<T> {
  data: T[];
  pageInfo: {
    nextPage: string;
    previousPage: string;
    total: number;
  };
}
