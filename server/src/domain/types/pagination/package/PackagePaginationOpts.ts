import { PaginationOptsBase } from "domain/types/pagination/PaginationOpts";
import { Package } from "infrastructure/database/models/package/Package";

export interface PackagePaginationOpts extends PaginationOptsBase<Package> {
  title?: string;
}
