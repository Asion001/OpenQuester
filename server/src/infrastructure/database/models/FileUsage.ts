import { Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

import { FileUsageDTO } from "domain/types/dto/file/FileUsageDTO";
import { FileUsageModel } from "domain/types/file/FileUsageModel";
import { File } from "infrastructure/database/models/File";
import { Package } from "infrastructure/database/models/Package";
import { User } from "infrastructure/database/models/User";

@Entity("file_usage")
export class FileUsage implements FileUsageModel {
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

  public import(data: FileUsageDTO) {
    this.file = data.file;
    this.package = data.package;
    this.user = data.user;
  }
}
