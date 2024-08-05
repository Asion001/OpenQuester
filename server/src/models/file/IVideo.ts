import { IFile } from "./IFile";

export interface IVideo extends IFile {
  /** in milliseconds */
  length: number;
}
