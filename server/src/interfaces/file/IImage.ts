import { IFile } from "./IFile";

export interface IImage extends IFile {
  /** both is pixels */
  width: number;
  height: number;
}
