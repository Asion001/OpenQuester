import { PackageFileType } from "domain/enums/package/PackageFileType";

export interface PackageFileDTO {
  md5: string; // filename
  type: PackageFileType;
  link?: string;
}
