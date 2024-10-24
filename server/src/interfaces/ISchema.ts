export interface ISchema {
  /** Validate schema and return back validated data */
  validate(): { [key: string]: any };
}
