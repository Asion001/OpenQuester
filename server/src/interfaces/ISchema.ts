import { Language } from "../types/text/translation";

export interface ISchema {
  /** Validate schema and return back validated data */
  validate(userLang?: Language): { [key: string]: any };
}
