import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

import { IFile } from "../../interfaces/file/IFile";

@Entity("file")
export class File implements IFile {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  path!: string;

  @Column()
  filename!: string;

  @Column()
  created_at!: Date;

  public import(data: IFile) {
    this.path = data.path;
    this.filename = data.filename;
    this.created_at = data.created_at;
  }
}
