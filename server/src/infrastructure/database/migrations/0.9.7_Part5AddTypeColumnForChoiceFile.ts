import { MigrationInterface, QueryRunner, TableColumn } from "typeorm";

import { Logger } from "infrastructure/utils/Logger";

export class AddTypeColumnForChoiceFile_1743660505666
  implements MigrationInterface
{
  name = "AddTypeColumnForChoiceFile_1743660505666";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.addColumn(
      "package_question_choice_answer",
      new TableColumn({
        name: "type",
        type: "enum",
        enum: ["video", "audio", "image"],
        isNullable: true,
      })
    );

    Logger.logMigrationComplete("0.9.7-5");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropColumn("package_question_choice_answer", "type");
  }
}
