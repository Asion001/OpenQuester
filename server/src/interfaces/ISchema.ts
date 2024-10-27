export interface ISchema {
  /** Validate schema and return back validated data */
  validate(): Promise<{ [key: string]: any }>;
}
