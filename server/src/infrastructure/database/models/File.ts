import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

import { FileSource } from "domain/enums/file/FileSource";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { FileModel } from "domain/types/file/FileModel";

@Entity("file")
export class File implements FileModel {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  path!: string;

  @Column({
    type: "enum",
    enum: FileSource,
    enumName: "file_source_enum",
  })
  source!: FileSource;

  @Column()
  filename!: string;

  @Column()
  created_at!: Date;

  public import(data: FileDTO) {
    this.path = data.path;
    this.filename = data.filename;
    this.source = data.source;
    this.created_at = data.created_at;
  }
}
