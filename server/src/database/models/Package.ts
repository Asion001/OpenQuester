import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { User } from "database/models/User";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { PackageDTO } from "types/package/PackageDTO";
import { PackageModel } from "types/package/PackageModel";

/** Same type as `OQContentStructure`. Workaround to use custom type in TypeORM model */
type ContentStructure = OQContentStructure;

@Entity("package")
export class Package implements PackageModel {
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

  public import(data: PackageDTO) {
    this.title = data.title;
    this.author = data.author;
    this.content = data.content;
    this.created_at = data.created_at;
  }
}
