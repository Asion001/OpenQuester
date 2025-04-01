import { Package } from "infrastructure/database/models/package/Package";

export const PACKAGE_SELECT_FIELDS: Array<keyof Package> = [
  "id",
  "title",
  "created_at",
];
