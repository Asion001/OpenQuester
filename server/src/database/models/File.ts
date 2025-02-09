import { EFileSource } from "enums/file/EFileSource";
import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

import { FileDTO } from "types/dto/file/FileDTO";
import { FileModel } from "types/file/FileModel";

@Entity("file")
export class File implements FileModel {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  path!: string;

  @Column({
    type: "enum",
    enum: EFileSource,
    enumName: "file_source_enum",
  })
  source!: EFileSource;

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
