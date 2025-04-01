import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from "typeorm";

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
}
