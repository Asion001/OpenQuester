import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageFileType } from "domain/enums/package/PackageFileType";
import { PackageAnswerDTO } from "domain/types/dto/package/PackageAnswerDTO";
import { PackageQuestionChoiceAnswerImport } from "domain/types/package/import/PackageQuestionChoiceAnswerImport";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";
import { S3StorageService } from "infrastructure/services/storage/S3StorageService";

@Entity("package_question_choice_answer")
export class PackageQuestionChoiceAnswer {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => PackageQuestion, (question) => question.answers, {
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "question" })
  question!: PackageQuestion;

  @Column({ type: "int" })
  order!: number;

  @Column({ type: "text", nullable: true })
  text?: string | null;

  @ManyToOne(() => File, { nullable: true, onDelete: "SET NULL" })
  @JoinColumn({ name: "file" })
  file?: File | null;

  @Column({ type: "enum", enum: PackageFileType })
  type?: PackageFileType | null;

  public import(data: PackageQuestionChoiceAnswerImport) {
    this.text = data.text;
    this.file = data.fileData?.file;
    this.type = data.fileData?.type;
    this.question = data.question;
  }

  public async toDTO(storage: S3StorageService): Promise<PackageAnswerDTO> {
    const fileDTO = this.file
      ? {
          id: this.file.id,
          md5: this.file.filename,
          type: this.type!,
          link: await storage.get(this.file.filename),
        }
      : null;
    return {
      text: this.text,
      file: fileDTO,
    };
  }
}
