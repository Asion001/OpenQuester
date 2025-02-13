import { Package } from "infrastructure/database/models/Package";

export const PACKAGE_SELECT_FIELDS: Array<keyof Package> = [
  "id",
  "title",
  "created_at",
  "content",
];
