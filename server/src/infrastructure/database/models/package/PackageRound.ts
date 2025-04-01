import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageRoundImport } from "domain/types/package/import/PackageRoundImport";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageTheme } from "infrastructure/database/models/package/PackageTheme";

@Entity("package_round")
export class PackageRound {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => Package, (pkg) => pkg.rounds, { onDelete: "CASCADE" })
  @JoinColumn({ name: "package" })
  package!: Package;

  @Column()
  name!: string;

  @Column({ type: "text", nullable: true })
  description?: string | null;

  @OneToMany(() => PackageTheme, (theme: PackageTheme) => theme.round)
  themes!: PackageTheme[];

  public import(data: PackageRoundImport): void {
    this.name = data.name;
    this.description = data.description;
    this.package = data.package;
  }
}
