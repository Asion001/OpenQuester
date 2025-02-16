import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { OQContentStructure } from "domain/types/file/structures/OQContentStructure";
import { PackageDTO } from "domain/types/package/PackageDTO";
import { PackageModel } from "domain/types/package/PackageModel";
import { User } from "infrastructure/database/models/User";

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
