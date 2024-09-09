import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm";

import { IPackage } from "../../interfaces/package/IPackage";
import { OQContentStructure } from "../../interfaces/file/structures/OQContentStructure";
import { User } from "./User";

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
  author!: User;

  public import(data: IPackage) {
    this.title = data.title;
    this.author = data.author;
    this.content = data.content;
    this.created_at = data.created_at;
  }
}
