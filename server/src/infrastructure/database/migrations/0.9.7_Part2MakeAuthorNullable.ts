import { MigrationInterface, QueryRunner } from "typeorm";

import { Logger } from "infrastructure/utils/Logger";

export class MakeAuthorNullable_1742725198044 implements MigrationInterface {
  name = "MakeAuthorNullable_1742725198044";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      'ALTER TABLE "package" ALTER COLUMN "author" DROP NOT NULL;'
    );
    Logger.logMigrationComplete("0.9.7-2");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      'ALTER TABLE "package" ALTER COLUMN "author" SET NOT NULL;'
    );
  }
}
