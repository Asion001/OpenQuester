import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageThemeImport } from "domain/types/package/import/PackageThemeImport";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";
import { PackageRound } from "infrastructure/database/models/package/PackageRound";

@Entity("package_theme")
export class PackageTheme {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => PackageRound, (round) => round.themes, {
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "round" })
  round!: PackageRound;

  @Column()
  name!: string;

  @Column({ type: "text", nullable: true })
  description?: string | null;

  @OneToMany(
    () => PackageQuestion,
    (question: PackageQuestion) => question.theme
  )
  questions!: PackageQuestion[];

  public import(data: PackageThemeImport) {
    this.name = data.name;
    this.description = data.description;
    this.round = data.round;
  }
}
