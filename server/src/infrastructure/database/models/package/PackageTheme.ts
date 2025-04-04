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
import { PackageThemeResponseDTO } from "domain/types/dto/package/response/PackageThemeResponseDTO";
import { PackageThemeImport } from "domain/types/package/import/PackageThemeImport";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";
import { PackageRound } from "infrastructure/database/models/package/PackageRound";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

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

  public async toDTO(
    storage: S3StorageService
  ): Promise<PackageThemeResponseDTO> {
    if (this.questions.length < 1) {
      throw new ClientError(ClientResponse.PACKAGE_CORRUPTED, undefined, {
        id: this.id,
        missing: "questions",
      });
    }

    const questionsDTO = await Promise.all(
      this.questions.map((question) => question.toDTO(storage))
    );
    return {
      id: this.id,
      name: this.name,
      description: this.description,
      questions: questionsDTO,
    };
  }
}
