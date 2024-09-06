export interface ISelectOptions<T> {
  select?: (keyof T)[];
  relations?: (keyof T)[];
}
