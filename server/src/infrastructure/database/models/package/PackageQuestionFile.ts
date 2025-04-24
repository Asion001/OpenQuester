import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageFileType } from "domain/enums/package/PackageFileType";
import { PackageQuestionFileDTO } from "domain/types/dto/package/PackageQuestionFileDTO";
import { PackageQuestionFileImport } from "domain/types/package/import/PackageQuestionFileImport";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

@Entity("package_question_file")
export class PackageQuestionFile {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => PackageQuestion, (question) => question.questionFiles, {
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "question" })
  question!: PackageQuestion;

  @Column({ type: "int" })
  order!: number;

  @ManyToOne(() => File, { onDelete: "CASCADE" })
  @JoinColumn({ name: "file" })
  file!: File;

  @Column({ type: "enum", enum: PackageFileType })
  type!: PackageFileType;

  @Column()
  display_time!: number;

  public import(data: PackageQuestionFileImport) {
    this.file = data.file;
    this.order = data.order;
    this.type = data.type;
    this.display_time = data.display_time;
    this.question = data.question;
  }

  public async toDTO(
    storage: S3StorageService
  ): Promise<PackageQuestionFileDTO> {
    const fileDTO = {
      id: this.file.id,
      md5: this.file.filename,
      type: this.type,
      link: await storage.get(this.file.filename),
    };
    return {
      file: fileDTO,
      displayTime: this.display_time,
      order: this.order,
    };
  }
}
