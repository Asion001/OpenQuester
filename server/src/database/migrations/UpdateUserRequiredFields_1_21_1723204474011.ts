import { MigrationInterface, QueryRunner } from "typeorm";

export class UpdateUserRequiredFields_1_21_1723204474011
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      ALTER TABLE "user"
      ADD CONSTRAINT "UQ_user_name" UNIQUE ("name");
    `);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      ALTER TABLE "user"
      DROP CONSTRAINT "UQ_user_name";
    `);
  }
}
