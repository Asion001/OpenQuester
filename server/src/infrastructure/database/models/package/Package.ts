import {
  Column,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from "typeorm";

import { AgeRestriction } from "domain/enums/game/AgeRestriction";
import { PackageImport } from "domain/types/package/import/PackageImport";
import { File } from "infrastructure/database/models/File";
import { PackageRound } from "infrastructure/database/models/package/PackageRound";
import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { User } from "infrastructure/database/models/User";

@Entity("package")
export class Package {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({ nullable: false })
  title!: string;

  @Column({ nullable: false })
  created_at!: Date;

  @ManyToOne(() => User, (user) => user.packages, {
    onDelete: "SET NULL",
    nullable: true,
  })
  @JoinColumn({ name: "author" })
  author?: User;

  @Column({ type: "varchar", nullable: true })
  language?: string | null;

  @Column({ type: "text", nullable: true })
  description?: string | null;

  @Column({ type: "enum", enum: AgeRestriction, default: AgeRestriction.NONE })
  age_restriction!: AgeRestriction;

  @ManyToOne(() => File, { nullable: true })
  @JoinColumn({ name: "logo_file" })
  logo?: File | null;

  // Relationships
  @OneToMany(() => PackageRound, (round: PackageRound) => round.package)
  rounds!: PackageRound[];

  @ManyToMany(() => PackageTag, (tag) => tag.packages, { cascade: true })
  @JoinTable({
    name: "packages_tags",
    joinColumn: { name: "package", referencedColumnName: "id" },
    inverseJoinColumn: { name: "tag", referencedColumnName: "id" },
  })
  tags!: PackageTag[];

  public async import(data: PackageImport) {
    this.title = data.title;
    this.created_at = data.createdAt;
    this.language = data.language;
    this.description = data.description;
    this.age_restriction = data.ageRestriction;
    this.author = data.author;
    this.tags = data.tags;

    if (data.logo) {
      this.logo = data.logo;
    }
  }
}
