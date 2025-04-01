import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";

import { PackageQuestionChoiceAnswerImport } from "domain/types/package/import/PackageQuestionChoiceAnswerImport";
import { File } from "infrastructure/database/models/File";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";

@Entity("package_question_choice_answer")
export class PackageQuestionChoiceAnswer {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => PackageQuestion, (question) => question.answers, {
    onDelete: "CASCADE",
  })
  @JoinColumn({ name: "question" })
  question!: PackageQuestion;

  @Column({ type: "text", nullable: true })
  text?: string | null;

  @ManyToOne(() => File, { nullable: true, onDelete: "SET NULL" })
  @JoinColumn({ name: "file" })
  file?: File | null;

  public import(data: PackageQuestionChoiceAnswerImport) {
    this.text = data.text;
    this.file = data.file;
    this.question = data.question;
  }
}
