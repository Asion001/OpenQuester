import { MigrationInterface, QueryRunner } from "typeorm";

import { Logger } from "infrastructure/utils/Logger";

export class UpdateUserRequiredFields_0_1_21_1723204474011
  implements MigrationInterface
{
  name = "UpdateUserRequiredFields_0_1_21_1723204474011";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      ALTER TABLE "user"
      ADD CONSTRAINT "UQ_user_name" UNIQUE ("name");
    `);
    Logger.logMigrationComplete("0.1.21");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      ALTER TABLE "user"
      DROP CONSTRAINT "UQ_user_name";
    `);
  }
}
