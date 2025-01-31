import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  JoinColumn,
} from "typeorm";

import { IPackage } from "types/package/IPackage";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { User } from "database/models/User";
import { IPackageImportData } from "types/package/IPackageImportData";

/** Same type as `OQContentStructure`. Workaround to use custom type in TypeORM model */
type ContentStructure = OQContentStructure;

@Entity("package")
export class Package implements IPackage {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column("json")
  title!: string;

  @Column("json")
  content!: ContentStructure;

  @Column()
  created_at!: Date;

  @ManyToOne(() => User, (user) => user.packages, {
    onDelete: "SET NULL",
  })
  @JoinColumn({ name: "author" })
  author!: User;

  public import(data: IPackageImportData) {
    this.title = data.title;
    this.author = data.author;
    this.content = data.content;
    this.created_at = data.created_at;
  }
}
