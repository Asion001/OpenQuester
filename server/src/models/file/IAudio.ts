import { IFile } from "./IFile";

export interface IAudio extends IFile {
  /** in milliseconds */
  length: number;
}
