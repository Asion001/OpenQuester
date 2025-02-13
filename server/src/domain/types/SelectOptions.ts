// Object template: { [keyof T]: [keyof (keyof T)]}
export type RelationSelects<T> = {
  [K in keyof T]?: NonNullable<T[K]> extends Array<infer U>
    ? Array<keyof U>
    : NonNullable<T[K]> extends object
    ? Array<keyof NonNullable<T[K]>>
    : never;
};

export interface SelectOptions<T> {
  select: (keyof T)[];
  relations: (keyof T)[];
  relationSelects?: RelationSelects<T>;
}
