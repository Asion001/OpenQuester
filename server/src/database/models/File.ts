import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
// import { IFile } from "../../models/files/IFile";

@Entity()
// TODO: Add implements IFile
export class File {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  path!: string;

  @Column()
  filename!: string;

  @Column()
  type!: string;
}
