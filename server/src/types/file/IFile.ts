import { EFileSource } from "enums/file/EFileSource";

export interface IFile {
  path: string;
  filename: string;
  source: EFileSource;
  created_at: Date;
}
