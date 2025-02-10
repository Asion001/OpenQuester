export interface SelectOptions<T> {
  select?: (keyof T)[];
  relations?: (keyof T)[];
}
