import { FileSource } from "enums/file/FileSource";

export interface FileModel {
  id: number;
  path: string;
  filename: string;
  source: FileSource;
  created_at: Date;
}
