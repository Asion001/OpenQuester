import { FileSource } from "enums/file/FileSource";

export interface FileDTO {
  path: string;
  filename: string;
  source: FileSource;
  created_at: Date;
}
