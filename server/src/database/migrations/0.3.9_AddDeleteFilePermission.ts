import { MigrationInterface, QueryRunner } from "typeorm";
import { Logger } from "utils/Logger";

export class AddDeleteFilePermission_0_3_9_1730832569761
  implements MigrationInterface
{
  name = "AddDeleteFilePermission_0_3_9_1730832569761";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `INSERT INTO "permission" (name) VALUES ('delete_file');`
    );
    Logger.logMigrationComplete("0.3.9");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `DELETE FROM "permission" WHERE name='delete_file'`
    );
  }
}
