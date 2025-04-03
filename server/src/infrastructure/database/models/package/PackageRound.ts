import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from "typeorm";

import { ClientResponse } from "domain/enums/ClientResponse";
import { ClientError } from "domain/errors/ClientError";
import { PackageRoundResponseDTO } from "domain/types/dto/package/response/PackageRoundResponseDTO";
import { PackageRoundImport } from "domain/types/package/import/PackageRoundImport";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageTheme } from "infrastructure/database/models/package/PackageTheme";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

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

  public async toDTO(
    storage: S3StorageService
  ): Promise<PackageRoundResponseDTO> {
    if (this.themes.length < 1) {
      throw new ClientError(ClientResponse.PACKAGE_CORRUPTED, undefined, {
        id: this.id,
        missing: "themes",
      });
    }

    const themesDTO = await Promise.all(
      this.themes.map((theme) => theme.toDTO(storage))
    );

    return {
      id: this.id,
      name: this.name,
      description: this.description,
      themes: themesDTO,
    };
  }
}
