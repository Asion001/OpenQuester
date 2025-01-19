import { Entity, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from "typeorm";

import { IFileUsage } from "../../interfaces/file/IFileUsage";
import { File } from "./File";
import { Package } from "./Package";
import { User } from "./User";

@Entity("file_usage")
export class FileUsage implements IFileUsage {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => File, (file) => file.id, {
    nullable: false,
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "file_id" })
  file!: File;

  @ManyToOne(() => Package, (pack) => pack.id, {
    nullable: true,
    onDelete: "SET NULL",
  })
  @JoinColumn({ name: "package_id" })
  package!: Package | undefined;

  @ManyToOne(() => User, (user) => user.id, {
    nullable: true,
    onDelete: "SET NULL",
  })
  @JoinColumn({ name: "user_id" })
  user!: User | undefined;

  public import(data: IFileUsage) {
    this.file = data.file;
    this.package = data.package;
    this.user = data.user;
  }
}
