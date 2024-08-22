import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { IFile } from "../../interfaces/file/IFile";

@Entity()
export class File implements IFile {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  path!: string;

  @Column()
  filename!: string;

  @Column()
  type!: string;
}
