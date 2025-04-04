import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from "typeorm";

import { PackageTagResponseDTO } from "domain/types/dto/package/response/PackageTagResponseDTO";
import { Package } from "infrastructure/database/models/package/Package";

@Entity("package_tag")
export class PackageTag {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  tag!: string;

  @ManyToMany(() => Package, (pack) => pack.tags)
  packages!: Package[];

  public async import(data: { tag: string }) {
    this.tag = data.tag;
  }

  public toDTO(): PackageTagResponseDTO {
    return {
      id: this.id,
      tag: this.tag,
    };
  }
}
