import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageFileType } from "domain/enums/package/PackageFileType";
import { PackageQuestionFileImport } from "domain/types/package/import/PackageQuestionFileImport";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";

@Entity("package_question_file")
export class PackageQuestionFile {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => PackageQuestion, (question) => question.questionFiles, {
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "question" })
  question!: PackageQuestion;

  @ManyToOne(() => File, { onDelete: "CASCADE" })
  @JoinColumn({ name: "file" })
  file!: File;

  @Column({ type: "enum", enum: PackageFileType })
  type!: PackageFileType;

  @Column()
  display_time!: number;

  public import(data: PackageQuestionFileImport) {
    this.file = data.file;
    this.type = data.type;
    this.display_time = data.display_time;
    this.question = data.question;
  }
}
