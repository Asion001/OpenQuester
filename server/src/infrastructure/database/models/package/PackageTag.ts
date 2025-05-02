import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from "typeorm";

import { PackageTagDTO } from "domain/types/dto/package/PackageTagDTO";
import { Package } from "infrastructure/database/models/package/Package";

@Entity("package_tag")
export class PackageTag {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  tag!: string;

  @ManyToMany(() => Package, (pack) => pack.tags)
  packages!: Package[];

  public import(data: { tag: string }) {
    this.tag = data.tag;
  }

  public toDTO(): PackageTagDTO {
    return {
      id: this.id,
      tag: this.tag,
    };
  }
}
